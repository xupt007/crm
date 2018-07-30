package com.hui.service;

import java.util.List;

import com.hui.entity.CrmCourseType;
import com.hui.entity.CrmCourseTypeCustom;

public interface CourseTypeService {
	
	public List<CrmCourseTypeCustom> selectAll(CrmCourseTypeCustom crmCourseTypeCustom);
	
	public CrmCourseType selectCourseTypeById(String coursetypeid);
	
	public void updateOrInsertCourseType(CrmCourseType crmCourseType);
}
