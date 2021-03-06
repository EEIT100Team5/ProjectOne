package com.iii._16_.ProductSale.ProductIntro.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iii._01_.Member.bean.MemberBean;
import com.iii._16_.BuyCart.ProCartList.model.ProCartListBean;
import com.iii._16_.BuyCart.ProCartList.model.ProCartListService;
import com.iii._16_.ProductSale.Product.model.ProductSaleDao;
import com.iii._16_.ProductSale.Product.model.ProductSaleService;

//點選購買 送出的請求
@Controller
@RequestMapping("/searchProductIntro")
public class ProductIntroController {
	@Autowired
	private ProductSaleService productsaleservice;
	@Autowired
	private ProCartListService procartlistservice;

	@ModelAttribute
	public void getCartListBean(Map<String, Object> map) {
		ProCartListBean cartlist = new ProCartListBean();
		map.put("ProCartListBean", cartlist);
	}

	// 點選購買會送出本方法的商品pk鍵 並搜尋此商品
	@RequestMapping("/{ProductSeqNo}")
	public String searchProduct(@PathVariable("ProductSeqNo") int productSeqNo, Map<String, Object> map,
			HttpSession session) throws SQLException {
		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
		map.put("productSaleBean", productsaleservice.getBySeqNo(productSeqNo));
		map.put("getLoginMemberBean", bean);
		return "Product/productIntro";
	}

	@RequestMapping(value = "/buy/{productid}", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> addThisOneInCart(@RequestParam("product") Integer id,
			@RequestParam("count") Integer count, @RequestParam("account") String account, HttpSession session)
			throws SQLException {
		System.out.println("加入購物車");
		System.out.println("產品編號 = " + id + "  數量 = " + count + "   購買人 = " + account);
		// 需要判斷有無帳號
		Map<String, String> map = new HashMap<>();
		if (account == "") {
			map.put("errorMessage", "請先登入");
			return map;
		}
		ProCartListBean cartlistbean = new ProCartListBean(0, id, count, 1, account);
		int countfirst = 0;
		int countcreate = 0;
		int countupdate = 0;
		// 取出 該帳號曾經選購的商品
		List<ProCartListBean> alreadyhavebeans = procartlistservice.selectToUpdate(id, account);
		// 得到一個 bob使用者選購過的商品放入list
		List<ProCartListBean> sameProIdAcount = new ArrayList<>();
		// 新建一個空的List裝同帳號購買過相同商品 判斷不用在重複比對
		// 如果沒有任何選購的商品 陣列=0 就新增商品((等於新增一個購物車
		if (alreadyhavebeans.size() == 0) {
			procartlistservice.insert(cartlistbean); // 只有第一次買東西會執行
			countfirst++;
			// 否則代表資料庫有該使用者選購過商品 傳入商品參數比對是哪一筆商品
			// 分成兩種狀態 第一種是狀態1 第一次選購 如果是狀態1的商品 就代表還在購物車中 要update該筆資料
			// 如果是狀態2代表選購過又刪除 要在新增一次該商品
		} else {
			for (ProCartListBean alreadyhavebean : alreadyhavebeans) {
				if (alreadyhavebean.getProductSeqNo() == id && alreadyhavebean.getProductStatus() == 1) {
					alreadyhavebean.setProductCount(alreadyhavebean.getProductCount() + count);
					countupdate = procartlistservice.update(alreadyhavebean);

				} else if (alreadyhavebean.getProductSeqNo() == id && alreadyhavebean.getProductStatus() == 2) {
					// 如果第一個購買該商品 又重購物車移除 商品狀態會變成2
					// 第二次在購買該商品 因為商品編號相同 而且狀態為2
					sameProIdAcount.add(alreadyhavebean);
				}
			}
		}
		if (sameProIdAcount.size() != 0 && countupdate != 1) { // 相同帳號 且 相同商品 狀態為2 第二次以上購買該商品 會判斷只新增一次
			procartlistservice.insert(cartlistbean);
			countcreate++;
		}
		System.out.println("第一次購買商品新增次數   =  " + countfirst);
		System.out.println("已經在購物車的商品更新次數   =  " + countupdate);
		System.out.println("第二次購買新增次數  =    " + countcreate);
		map.put("successMessage", "新增資料到購物車");
		return map;
	}
}
