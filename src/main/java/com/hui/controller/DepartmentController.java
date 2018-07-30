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
import com.hui.entity.CrmDepartment;
import com.hui.service.impl.DepartmentServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class DepartmentController {
	
	@Autowired
	private DepartmentServiceImpl departmentServiceImpl;
	
	
	@RequestMapping("/departmentList")
	public String departmentList(Model model,@Param("currentPage") Integer currentPage) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmDepartment> departmentList = departmentServiceImpl.selectAllDepartment();
		PageInfo<CrmDepartment> page = new PageInfo<CrmDepartment>(departmentList);
		model.addAttribute("departmentList", departmentList);
		model.addAttribute("page", page);
		return "department/listDepartment";
	}
	
	@RequestMapping("/queryAfterUpdateDepartment")
	public String queryAfterUpdateDepartment(Model model, @Param("depid") String depid) {
		CrmDepartment department = departmentServiceImpl.selectDepartmentById(depid);
		model.addAttribute("department", department);
		return "department/addOrEditDepartment";
	}
	
	@RequestMapping("/updateDepartment")
	public String updateDepartment(Model model, @Param("CrmDepartment") CrmDepartment department) {
		departmentServiceImpl.updateDepartment(department);
		return this.departmentList(model,1);
	}
}
