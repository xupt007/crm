package com.hui.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.common.MyCommon;
import com.hui.entity.CrmGraduate;
import com.hui.entity.CrmGraduateCustom;
import com.hui.entity.CrmStudent;
import com.hui.mapper.CrmGraduateMapper;
import com.hui.mapper.CrmStudentMapper;
import com.hui.service.GraguateService;

@Service
public class GraguateServiceImpl implements GraguateService{

	@Autowired
	private CrmGraduateMapper crmGraduateMapper;
	@Autowired
	private CrmStudentMapper crmStudentMapper;
	@Override
	public List<CrmGraduateCustom> selectAll() {
		List<CrmGraduateCustom> graduateList = crmGraduateMapper.selectAll();
		return graduateList;
	}

	@Override
	public void insertGraduate(CrmGraduate crmGraduate) {
		crmGraduate.setGranduateid(UUID.randomUUID().toString());
		crmGraduateMapper.insertSelective(crmGraduate);
		CrmStudent student = crmStudentMapper.selectByPrimaryKey(crmGraduate.getStudentid());
		student.setStatus(MyCommon.STUDENT_STATUS.get(MyCommon.STUDENT_STATUS_GRADUATE));
		crmStudentMapper.updateByPrimaryKeySelective(student);
	}

}
