package com.iii._16_.ProductSale.ProductIntro.controller;

import java.sql.SQLException;
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
		ProCartListBean cartlistbean = new ProCartListBean(0, id, count, account);
		List<ProCartListBean> alreadyhavebeans = procartlistservice.selectToUpdate(id, account);

		if (alreadyhavebeans.size() == 0) {

			procartlistservice.insert(cartlistbean);

		} else {
			for (ProCartListBean alreadyhavebean : alreadyhavebeans) {
				if (alreadyhavebean.getProductSeqNo() == id) {
					alreadyhavebean.setProductCount(alreadyhavebean.getProductCount() + count);
					procartlistservice.update(alreadyhavebean);
				} else {
					procartlistservice.insert(cartlistbean);
				}
			}

		}

		// 如果帳號不是空字串 檢查購物車資料庫有沒有此帳號的商品
		// List<ProCartListBean> cartlists = procartlistservice.getByAccount(account);//
		// 取得此帳號有新增至購物車的資料
		//
		// if (cartlists.size() == 0) {
		// procartlistservice.insert(cartlistbean);
		// } else {
		// for (ProCartListBean cartlist : cartlists) {
		// if (cartlist.getProductSeqNo() == id) {
		// List<ProCartListBean> alreadyhavebeans =
		// procartlistservice.selectToUpdate(id, account);
		// for (ProCartListBean alreadyhavebean : alreadyhavebeans) {
		// alreadyhavebean.setProductCount(alreadyhavebean.getProductCount() + count);
		// procartlistservice.update(alreadyhavebean);
		// }
		//
		// }
		// }
		// }

		map.put("successMessage", "新增資料到購物車");
		return map;
	}
}
