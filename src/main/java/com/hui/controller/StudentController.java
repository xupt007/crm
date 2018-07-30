package com.hui.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hui.common.MyCommon;
import com.hui.entity.CrmCourseTypeCustom;
import com.hui.entity.CrmStudent;
import com.hui.entity.CrmStudentCustom;
import com.hui.service.impl.CourseTypeServiceImpl;
import com.hui.service.impl.StudentServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class StudentController {
	
	@Autowired
	private StudentServiceImpl studentServiceImpl;
	@Autowired
	private CourseTypeServiceImpl courseTypeService;
	
	@RequestMapping("/studentList")
	public String studentList(Model model, @Param("currentPage")Integer currentPage,@Param("condition")String condition,
		@Param("CrmStudentCustom")CrmStudentCustom crmStudentCustom) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage),MyCommon.PAGESIZE);
		List<CrmStudentCustom> studentList = studentServiceImpl.selectAll(condition,crmStudentCustom.getClassid());
		PageInfo<CrmStudentCustom> page = new PageInfo<CrmStudentCustom>(studentList);
		List<CrmCourseTypeCustom> courseList = courseTypeService.selectAll(new CrmCourseTypeCustom());
		studentServiceImpl.setClassNameAndCourseName(crmStudentCustom);
		model.addAttribute("studentList", studentList);
		model.addAttribute("page", page);
		model.addAttribute("courseList", courseList);
		model.addAttribute("studentCustom", crmStudentCustom);
		return "student/listStudent";
	}
	
	@RequestMapping("/queryBeforeUpdateOrInsertStudent")
	public String queryBeforeUpdateOrInsertStudent(Model model,@Param("studentid")String studentid) {
		CrmStudentCustom studentCustom = studentServiceImpl.selectById(studentid);
        List<CrmCourseTypeCustom> courseList = courseTypeService.selectAll(new CrmCourseTypeCustom());
		model.addAttribute("studentCustom", studentCustom);
        model.addAttribute("courseList",courseList);
		return "student/addOrEditStudent";
	}
	
	@RequestMapping("/queryStudentById")
	public String studentCustom(Model model,@Param("studentid")String studentid) {
		CrmStudentCustom studentCustom = studentServiceImpl.selectById(studentid);
        model.addAttribute("studentCustom", studentCustom);
		return "student/queryStudent";
	}
	
	@RequestMapping("/updayeOrInsertStudent")
	public String updayeOrInsertStudent(Model model,@Param("CrmStudent")CrmStudent crmStudent) {
		studentServiceImpl.updateOrInsertStudent(crmStudent);
		return this.studentList(model, 1, "",new CrmStudentCustom());
	}
	
	@RequestMapping("/queryBeforeChangeStudent")
	public String queryBeforeChangeStudent(Model model,@Param("studentid")String studentid) {
		CrmStudentCustom studentCustom = studentServiceImpl.selectById(studentid);
		List<CrmCourseTypeCustom> courseList = courseTypeService.selectAll(new CrmCourseTypeCustom());
		model.addAttribute("studentCustom", studentCustom);
		model.addAttribute("courseList", courseList);
		return "station/editStation";
	}
	
	@RequestMapping("queryBeforeRunoffStudent")
	public String queryBeforeRunoffStudent(Model model,@Param("studentid")String studentid) {
		CrmStudentCustom studentCustom = studentServiceImpl.selectById(studentid);
		model.addAttribute("studentCustom", studentCustom);
		return "runoff/addRunoff";
	}
	
	@RequestMapping("/ajaxSearchStudentByClass")
	@ResponseBody
	public List<CrmStudentCustom> ajaxSearchStudentByClass(String classid) {
		List<CrmStudentCustom> studentList = studentServiceImpl.selectAll(null, classid);
		System.out.println("classid:"+classid);
		return studentList;
	}

}
