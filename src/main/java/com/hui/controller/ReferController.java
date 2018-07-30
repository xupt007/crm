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
import com.hui.entity.*;
import com.hui.service.impl.ClassServiceImpl;
import com.hui.service.impl.CourseTypeServiceImpl;
import com.hui.service.impl.FollowServiceImpl;
import com.hui.service.impl.ReferServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class ReferController {

	@Autowired
	private ReferServiceImpl referServiceImpl;
	@Autowired
	private CourseTypeServiceImpl courseTypeServiceImpl;
	@Autowired
	private ClassServiceImpl classServiceImpl;
	@Autowired
	private FollowServiceImpl followServiceImpl;	
	//查询所有咨询列表
	@RequestMapping("/referList")
	public String referList(Model model, @Param("currentPage")Integer currentPage,@Param("condition")String condition,
			@Param("status")String status) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmReferCustom> referList = referServiceImpl.selectAll(condition,status);
		PageInfo<CrmReferCustom> page = new PageInfo<CrmReferCustom>(referList);
		model.addAttribute("referList", referList);
		model.addAttribute("page", page);
		if(status!=null && !"".equals(status)) {
			return "refer/signupRefer";
		}else {
			return "refer/listRefer";
		}
		
	}
	
	//通过id查询
	@RequestMapping("/queryReferById")
	public String queryReferById(Model model,@Param("referid")String referid) {
		CrmReferCustom referCustom = referServiceImpl.selectReferById(referid);
		List<CrmFollowCustom> followList = followServiceImpl.selectFollow(referid);
		model.addAttribute("referCustom", referCustom);
		model.addAttribute("followList", followList);
		return "refer/queryRefer";
	}
	
	@RequestMapping("/queryBeforeUpdateOrInsertRefer")
	public String queryBeforeUpdateOrInsertRefer(Model model, @Param("referid") String referid) {
		CrmReferCustom referCustom = referServiceImpl.selectReferById(referid);
		List<CrmCourseTypeCustom> courseList = courseTypeServiceImpl.selectAll(new CrmCourseTypeCustom());
		List<CrmClassCustom> classList = classServiceImpl.selectAll();
		model.addAttribute("referCustom", referCustom);
		model.addAttribute("courseList", courseList);
		model.addAttribute("classList", classList);
		return "refer/addOrEditRefer";
	}
	
	//修改和添加
	@RequestMapping("/updateOrInsertRefer")
	public String updateOrInsertRefer(Model model, @Param("CrmRefer")CrmRefer crmRefer) {
		referServiceImpl.updateOrInsertRefer(crmRefer);
		return this.referList(model, 1, "","");
	}

	@RequestMapping("/queryBeforeRegisterStudent")
	public String queryBeforeRegisterStudent(Model model,@Param("referid")String referid){
		CrmReferCustom referCustom = referServiceImpl.selectReferById(referid);
		model.addAttribute("referCustom",referCustom);
		return "refer/addStudent";
	}

	@RequestMapping("/registerStudent")
	public String registerStudent(Model model, @Param("CrmStudentCustom")CrmStudentCustom crmStudentCustom){
		List<CrmCourseTypeCustom> courseList = courseTypeServiceImpl.selectAll(new CrmCourseTypeCustom());
		model.addAttribute("studentCustom",crmStudentCustom);
		model.addAttribute("courseList",courseList);
		return "student/addOrEditStudent";
	}
}
