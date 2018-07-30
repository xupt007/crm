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
import com.hui.entity.CrmClassCustom;
import com.hui.entity.CrmGraduate;
import com.hui.entity.CrmGraduateCustom;
import com.hui.service.impl.ClassServiceImpl;
import com.hui.service.impl.GraguateServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class GraduateController {

	@Autowired
	private GraguateServiceImpl graguateServiceImpl;
	@Autowired
	private ClassServiceImpl classServiceImpl;
	
	@RequestMapping("/graguateList")
	public String graguateList(Model model,@Param("currentPage")Integer currentPage) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmGraduateCustom> graduateList = graguateServiceImpl.selectAll();
		PageInfo<CrmGraduateCustom> page = new PageInfo<CrmGraduateCustom>(graduateList);
		model.addAttribute("graduateList", graduateList);
		model.addAttribute("page", page);
		return "graduate/listGraduate";
	}
	
	@RequestMapping("/queryBeforeInsertGraguate")
	public String queryBeforeInsertGraguate(Model model) {
		List<CrmClassCustom> classList = classServiceImpl.selectAll();
		model.addAttribute("classList", classList);
		return "graduate/addOrEditGraduate";
	}
	
	@RequestMapping("/insertGraguate")
	public String insertGraguate(Model model, @Param("CrmGraguate")CrmGraduate crmGraduate) {
		graguateServiceImpl.insertGraduate(crmGraduate);
		return this.graguateList(model, 1);
	}
}
