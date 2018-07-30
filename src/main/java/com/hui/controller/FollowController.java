package com.hui.controller;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hui.entity.CrmFollow;
import com.hui.service.impl.FollowServiceImpl;

@Controller
public class FollowController {

	@Autowired
	private FollowServiceImpl followServiceImpl;
	
	@RequestMapping("/queryBeforeInsertFollow")
	public String queryBeforeInsertFollow(Model model,@Param("referid")String referid) {
		model.addAttribute("referid", referid);
		return "follow/addOrEditFollow";
	}
	
	@RequestMapping("/insertFollow")
	public String insertFollow(@Param("CrmFollow")CrmFollow crmFollow) {
		followServiceImpl.insertFollow(crmFollow);
		return "redirect:referList";
	}
}
