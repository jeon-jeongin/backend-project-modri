package com.mycompany.project.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.project.user.service.UserService;
import com.mycompany.project.user.vo.UserVO;

// http://localhost:8090/project/user/listMembers.do
@Controller("userController")
public class UserControllerImp implements UserController{

	@Autowired
	private UserService userService;
	@Autowired
	private UserVO userVO ;
	
	@Override
	@RequestMapping(value="/user/listMembers.do" ,method = RequestMethod.GET)
	public ModelAndView listUsers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		List usersList = userService.listUsers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("usersList", usersList);
		return mav;
	}
	@RequestMapping(value="/user/addUser.do" ,method = RequestMethod.POST)
	public ModelAndView addUser(@ModelAttribute("user") UserVO user,
			                  HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = userService.addUser(user);
		ModelAndView mav = new ModelAndView("redirect:/user/listMembers.do");
		return mav;
	}
	
	@Override
	@RequestMapping(value="/user/removeUser.do" ,method = RequestMethod.GET)
	public ModelAndView removeUser(@RequestParam("id") String id, 
			           HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		userService.removeUser(id);
		ModelAndView mav = new ModelAndView("redirect:/user/listMembers.do");
		return mav;
	}

	@RequestMapping(value = { "/user/loginForm.do", "/user/memberForm.do", "/user/modMember.do", "/user/memberFormCk.do", "/user/allProductCate.do"}, method =  RequestMethod.GET)
	public ModelAndView form(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = getViewName(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/user/login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user") UserVO user,
				              RedirectAttributes rAttr,
		                       HttpServletRequest request, HttpServletResponse response) throws Exception {
	ModelAndView mav = new ModelAndView();
	userVO = userService.login(user);
	if(userVO != null) {
		    HttpSession session = request.getSession();
		    session.setAttribute("user", userVO);
		    session.setAttribute("isLogOn", true);
		    mav.setViewName("redirect:/user/listMembers.do");
	}else {
		    rAttr.addAttribute("result","loginFailed");
		    mav.setViewName("redirect:/user/loginForm.do");
	}
	return mav;
	}

	@Override
	@RequestMapping(value = "/user/logout.do", method =  RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/main.do");
		return mav;
	}	

	@RequestMapping(value = "/user/*Form.do", method =  RequestMethod.GET)
	private ModelAndView form(@RequestParam(value= "result", required=false) String result,
						       HttpServletRequest request, 
						       HttpServletResponse response) throws Exception {
		//String viewName = getViewName(request);
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.addObject("result",result);
		mav.setViewName(viewName);
		return mav;
	}
		
	@Override
	@RequestMapping(value="/user/modUser.do" ,method = RequestMethod.GET)
	public ModelAndView modMember(@ModelAttribute("user") UserVO user, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		int result = 0;
		result = userService.modUser(user);
		ModelAndView mav = new ModelAndView("redirect:/user/listMembers.do");
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
