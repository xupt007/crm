package com.hui.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.entity.CrmCourseType;
import com.hui.entity.CrmCourseTypeCustom;
import com.hui.mapper.CrmCourseTypeMapper;
import com.hui.service.CourseTypeService;

@Service
public class CourseTypeServiceImpl implements CourseTypeService{
	@Autowired
	private CrmCourseTypeMapper crmCourseTypeMapper;
	
	@Override
	public List<CrmCourseTypeCustom> selectAll(CrmCourseTypeCustom crmCourseTypeCustom) {
		List<CrmCourseTypeCustom> couseTypeList = crmCourseTypeMapper.selectAll(crmCourseTypeCustom);
		return couseTypeList;
	}

	@Override
	public CrmCourseType selectCourseTypeById(String coursetypeid) {
		CrmCourseType courseType = crmCourseTypeMapper.selectByPrimaryKey(coursetypeid);
		return courseType;
	}

	@Override
	public void updateOrInsertCourseType(CrmCourseType crmCourseType) {
		if(crmCourseType.getCoursetypeid()!=null && !"".equals(crmCourseType.getCoursetypeid())) {
			crmCourseTypeMapper.updateByPrimaryKeySelective(crmCourseType);
		}else {
			crmCourseType.setCoursetypeid(UUID.randomUUID().toString());
			crmCourseTypeMapper.insert(crmCourseType);
		}
	}

}
