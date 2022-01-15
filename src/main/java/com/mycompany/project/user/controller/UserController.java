package com.mycompany.project.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.project.user.vo.UserVO;

public interface UserController {

	public ModelAndView listUsers(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView addUser(@ModelAttribute("infomation") UserVO userVO,HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView removeUser(@RequestParam("userid") String id, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView login(@ModelAttribute("user") UserVO user,
                              RedirectAttributes rAttr,
                              HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
	public ModelAndView modMember(@ModelAttribute("infoma") UserVO userVO,HttpServletRequest request, HttpServletResponse response) throws Exception;

}
