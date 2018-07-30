package com.hui.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hui.entity.CrmStaff;
import com.hui.service.impl.ClassServiceImpl;
import com.hui.service.impl.StaffServiceImpl;

@Controller
public class LoginController {
	@Autowired
	private StaffServiceImpl staffServiceImpl;
	@Autowired
	private ClassServiceImpl classServiceImpl;
	
	@RequestMapping("/staffLogin")
	public String staffLogin(Model model, HttpSession session, @Param("CrmStaff")CrmStaff crmStaff) {
		//登录之前判断一下需要判断的东西
		classServiceImpl.setClassStatus();
		String loginname = crmStaff.getLoginname();
		String loginpwd = crmStaff.getLoginpwd();
		if(staffServiceImpl.login(crmStaff,loginname, loginpwd)) {
			session.setAttribute("crmStaff", crmStaff);
			return "redirect:frame";
		}
		model.addAttribute("loginname", loginname);
		model.addAttribute("error", "用户名或密码不正确");
		return "login";
	}
	
	@RequestMapping("/staffLogout")
	public String staffLogout(HttpSession session) {
		session.invalidate();
		return "redirect:login";
	}
}
