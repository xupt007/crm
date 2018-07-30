package com.hui.controller;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hui.common.MyCommon;
import com.hui.entity.CrmDepartment;
import com.hui.entity.CrmStaff;
import com.hui.entity.CrmStaffCustom;
import com.hui.service.impl.DepartmentServiceImpl;
import com.hui.service.impl.StaffServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class StaffController {
	@Autowired
	private StaffServiceImpl staffServiceImpl;
	@Autowired
	private DepartmentServiceImpl departmentServiceImpl;
	
	@RequestMapping("/staffUpdatePwd")
	public String staffUpdatePwd(Model model, @Param("oldPassword") String oldPassword,
			@Param("newPassword") String newPassword,HttpSession session) {
		 Enumeration<String> attributeNames = session.getAttributeNames();
		 System.out.println(attributeNames);
		 CrmStaff crmStaff = (CrmStaff) session.getAttribute("crmStaff");
		 String staffId = crmStaff.getStaffid();
		 System.out.println("id:"+staffId);
		if(staffServiceImpl.updatePwd(staffId, oldPassword, newPassword)) {
			return "redirect:frame";
		}
		return "staff/updPwd";
	}
	
	//员工的所有信息
	@RequestMapping("/staffList")
	public String staffList(Model model, @Param("currentPage") Integer currentPage,@Param("CrmStaffCustom") CrmStaffCustom crmStaffCustom) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmStaffCustom> staffList = staffServiceImpl.selectAllByPage(crmStaffCustom);
		PageInfo<CrmStaffCustom> page = new PageInfo<CrmStaffCustom>(staffList);
		List<CrmDepartment> depList = departmentServiceImpl.selectAllDepartment();
		crmStaffCustom = staffServiceImpl.selectDepNameAndPostName(crmStaffCustom);
		model.addAttribute("staffList", staffList);
		model.addAttribute("page", page);
		model.addAttribute("depList", depList);
		model.addAttribute("crmStaffCustom", crmStaffCustom);
		return "staff/listStaff";
	}
	
	@RequestMapping("queryBeforeAddStaff")
	public String queryBeforeAddStaff(Model model) {
		List<CrmDepartment> depList = departmentServiceImpl.selectAllDepartment();
		model.addAttribute("depList", depList);
		return "staff/addStaff";
	}
	
	@RequestMapping("/addOrUpdateStaff")
	public String addStaff(Model model, @Param("CrmStaff") CrmStaff crmStaff) {
		staffServiceImpl.insertOrUpdateStaff(crmStaff);
		return this.staffList(model, 1, new CrmStaffCustom());
	}
	
	@RequestMapping("/queryBeforeUpdateStaff")
	public String queryBeforeUpdateStaff(Model model,@Param("staffid") String staffid) {
		List<CrmDepartment> depList = departmentServiceImpl.selectAllDepartment();
		CrmStaffCustom crmStaffCustom = staffServiceImpl.selectStaffById(staffid);
		model.addAttribute("depList", depList);
		model.addAttribute("crmStaffCustom", crmStaffCustom);
		return "staff/editStaff";
	}
	
}
