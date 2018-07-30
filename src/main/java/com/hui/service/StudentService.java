package com.hui.service;

import java.util.List;

import com.hui.entity.CrmStudent;
import com.hui.entity.CrmStudentCustom;

public interface StudentService {
	
	public List<CrmStudentCustom> selectAll(String condition,String classid);
	
	public void updateOrInsertStudent(CrmStudent crmStudent);
	
	public CrmStudentCustom selectById(String studentid);
	
	public void setClassNameAndCourseName(CrmStudentCustom crmStudentCustom);

}
