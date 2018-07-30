package com.hui.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hui.common.MyCommon;
import com.hui.entity.CrmClass;
import com.hui.entity.CrmClassCustom;
import com.hui.entity.CrmCourseTypeCustom;
import com.hui.service.impl.ClassServiceImpl;
import com.hui.service.impl.CourseTypeServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class ClassController {
	
	@Autowired
	private ClassServiceImpl classServiceImpl;
	@Autowired
	private CourseTypeServiceImpl courseTypeServiceImpl;
	
	//查询所有班级
	@RequestMapping("/classList")
	public String classList(Model model ,@Param("currentPage")Integer currentPage) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage),MyCommon.PAGESIZE);
		List<CrmClassCustom> classList = classServiceImpl.selectAll();
		PageInfo<CrmClassCustom> page = new PageInfo<CrmClassCustom>(classList);
		model.addAttribute("classList", classList);
		model.addAttribute("page", page);
		return "classesm/listClass";
	}
	
	//通过id查看班级信息
	@RequestMapping("/queryClassById")
	public String queryClassById(Model model,@Param("classId")String classId) {
		CrmClassCustom classCustom = classServiceImpl.selectClassById(classId);
		model.addAttribute("classCustom", classCustom);
		//---这里留出来一个查询相关学生信息的功能----
		return "classesm/viewClass";
	}
	
	@RequestMapping("/queryBeforeUpdateOrInsertClass")
	public String queryBeforeUpdateOrInsertClass(Model model, @Param("classId")String classId) {
		if(classId!=null && !"".equals(classId)) {
			CrmClassCustom classCustom = classServiceImpl.selectClassById(classId);
			model.addAttribute("classCustom", classCustom);
		}
		List<CrmCourseTypeCustom> courseList = courseTypeServiceImpl.selectAll(new CrmCourseTypeCustom());
		model.addAttribute("courseList", courseList);
		return "classesm/addOrEditClass";
	}
	
	//修改或者添加班级
	@RequestMapping("/updateOrInsertClass")
	public String updateOrInsertClass(Model model,@Param("CrmClass")CrmClass crmClass) {
		classServiceImpl.updateOrInserClass(crmClass);
		return this.classList(model, 1);
	}
	
	//schedule: 课表
	@RequestMapping("/queryBeforeuploadSchedule")
	public String uploadSchedule(Model model, @Param("classId")String classId) {
		CrmClassCustom classCustom = classServiceImpl.selectClassById(classId);
		model.addAttribute("classCustom", classCustom);
		return "classesm/uploadClass";
	}
	
	//上传课表
	@RequestMapping("/uploadSchedule")
	public String uploadSchedule(Model model, @Param("schedule") MultipartFile schedule,
			@Param("classid") String classid,HttpServletRequest request) {
		classServiceImpl.insertSchedule(schedule, classid);
		return this.classList(model, 1);
	}
	
	//下载课表
	@RequestMapping("/downloadSchedule")
	 public ResponseEntity<byte[]> downloadSchedule(@Param("classId") String classId)  { 
		 System.out.println(classId);
	    ResponseEntity<byte[]> schedule = classServiceImpl.downloadSchedule(classId);
	    return schedule;
	 }

	 @RequestMapping("/ajaxSearchClassByCourse")
	 @ResponseBody
	 public List<CrmClass> ajaxSearchClassByCourse(String courseid){
		 List<CrmClass> classList = classServiceImpl.selectClassByCourse(courseid);
		 return classList;
	 }

}
