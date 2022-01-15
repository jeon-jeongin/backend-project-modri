package com.mycompany.project.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.project.product.service.ProductService;
import com.mycompany.project.product.vo.ProductVO;

// http://localhost:8090/project/main.do
@Controller("productController")
public class ProductController {
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/user/productSearch.do", method = RequestMethod.GET)
	public ModelAndView searchProducts(ModelAndView mav, ProductVO vo) {
		System.out.println("name: " + vo.getPname());
		List<ProductVO> productsList = productService.searchProducts(vo);
		System.out.println(productService.searchProducts(vo));
		mav.addObject("productsList", productsList);
		mav.setViewName("/user/productSearch");
		return mav;
	}
	
	@RequestMapping(value = "/user/detailsProduct.do", method = RequestMethod.GET)
	public ModelAndView detailProducts(HttpServletRequest request, HttpServletResponse response, ProductVO vo) throws Exception {
		System.out.println("pno: " + vo.getPno());
		List<ProductVO> productsList = productService.detailProducts(vo);
		System.out.println(productService.detailProducts(vo));
		String viewName = getViewName(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("productsList", productsList);
		mav.setViewName("/user/detailsProduct");
		return mav;
	}

	private String getViewName(HttpServletRequest request) throws Exception {
		String contextPath = request.getContextPath();
		String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
		if (uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}

		int begin = 0;
		if (!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}

		int end;
		if (uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if (uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();
		}

		String viewName = uri.substring(begin, end);
		if (viewName.indexOf(".") != -1) {
			viewName = viewName.substring(0, viewName.lastIndexOf("."));
		}
		if (viewName.lastIndexOf("/") != -1) {
			viewName = viewName.substring(viewName.lastIndexOf("/", 1), viewName.length());
		}
		return viewName;
	}
}
