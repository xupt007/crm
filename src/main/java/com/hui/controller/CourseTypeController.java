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
import com.hui.entity.CrmCourseType;
import com.hui.entity.CrmCourseTypeCustom;
import com.hui.service.impl.CourseTypeServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class CourseTypeController {

	@Autowired
	private CourseTypeServiceImpl courseTypeServiceImpl;
	
	@RequestMapping("/courseTypeList")
	public String courseTypeList(Model model, @Param("currentPage")Integer currentPage,@Param("CrmCourseTypeCustom") CrmCourseTypeCustom crmCourseTypeCustom) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmCourseTypeCustom> courseTypeList = courseTypeServiceImpl.selectAll(crmCourseTypeCustom);
		PageInfo<CrmCourseTypeCustom> page = new PageInfo<CrmCourseTypeCustom>(courseTypeList);
		model.addAttribute("courseTypeList", courseTypeList);
		model.addAttribute("page", page);
		model.addAttribute("crmCourseTypeCustom", crmCourseTypeCustom);
		return "coursetype/listCourse";
	}
	
	@RequestMapping("/QueryBeforeupdateOrAddCourseType")
	public String QueryBeforeupdateOrAddCourseType(Model model,@Param("coursetypeid")String coursetypeid) {
		if(coursetypeid!=null && !"".equals(coursetypeid.trim())) {
			CrmCourseType courseType = courseTypeServiceImpl.selectCourseTypeById(coursetypeid);
			model.addAttribute("courseType", courseType);
		}
		return "coursetype/addOrEditCourse";
	}
	
	@RequestMapping("/updateOrAddCourseType")
	public String updateOrAddCourseType(Model model,@Param("CrmCourseType") CrmCourseType crmCourseType) {
		courseTypeServiceImpl.updateOrInsertCourseType(crmCourseType);
		return this.courseTypeList(model, 1, new CrmCourseTypeCustom());
	}
}
