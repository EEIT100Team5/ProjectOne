//package com.iii._09_.Cart.conrtoller;
//
//import java.sql.SQLException;
//import java.sql.Timestamp;
//import java.util.Map;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.iii._09_.addproduct.model.ProductBean;
//import com.iii._09_.addproduct.model.ProductService;
//
//
//@Controller
//public class CartController {
//	
//	@Autowired
//	private ProductService proService;
//	
//	
//	@ModelAttribute
//	public void addProductBean(Map<String,Object> map) {
//		map.put("CartBean", new ProductBean());
//	
//	}
//	
//	//空的Bean裝資料
//	@RequestMapping(value = "/uploadproduct" ,method = RequestMethod.GET)
//	public String getProductId(Map<String,Object> map,HttpSession session) {	
////		productBean bean = (productBean) session.getAttribute("");	
////		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
////		System.out.println(bean);	
//		System.out.println("有效才敢大聲");
////		map.put("productBean", new productBean());
//		return "Cart/CartSimple";
//	}
//	
//	
//	@RequestMapping(value = "/insertProduct",method = RequestMethod.POST)
//	public String insertProduct(
//			@ModelAttribute("CartBean") ProductBean pro,
//			HttpSession session,HttpServletRequest request) throws SQLException {
//		
//		System.out.println("有出現才有效");
//
//		Timestamp ts = new java.sql.Timestamp(System.currentTimeMillis());
//		pro.setProDate(ts);
////		productBean bean = (productBean) session.getAttribute("");
////		 得到一個multipart文件 並取出檔名(originalFilename)
////		 副檔名(extImage)
//		MultipartFile quesImage = pro.getProPic();
//		String originalFilename = quesImage.getOriginalFilename();
//		pro.setProPicPath(originalFilename);
//
//		// 取出影片封面圖片副檔名
//		String extImage = originalFilename.substring(originalFilename.lastIndexOf("."));
//		ProductBean pro2 = proService.saveImage(pro, extImage, quesImage);
//		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
////		MemberBean bean = (MemberBean) session.getAttribute("LoginOK");
////		System.out.println(bsw3;
//		try {
//			proService.insert(pro);
//			request.setAttribute("ok", pro2);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
////			request.setAttribute("insertok", mb2);
//		System.out.println(pro2);
//		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
//		return "Cart/success";
//	}
//	
//	
//	
//
//
//}