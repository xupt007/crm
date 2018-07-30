package com.hui.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hui.common.MyCommon;
import com.hui.entity.CrmRunoff;
import com.hui.entity.CrmRunoffCustom;
import com.hui.service.impl.RunoffServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class RunoffController {

	@Autowired
	private RunoffServiceImpl runoffServiceImpl;
	
	@RequestMapping("/runoffList")
	public String runoffList(Model model ,@Param("currentPage")Integer currentPage) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmRunoffCustom> runoffList = runoffServiceImpl.selectAll();
		PageInfo<CrmRunoffCustom> page = new PageInfo<CrmRunoffCustom>(runoffList);
		model.addAttribute("runoffList", runoffList);
		model.addAttribute("page", page);
		return "runoff/listRunoff";
	}
	
	@RequestMapping("/insertRunoff")
	public String insertRunoff(Model model,@Param("CrmRunoff")CrmRunoff crmRunoff) {
		runoffServiceImpl.insertRunoff(crmRunoff);
		return this.runoffList(model, 1);
	}
}
