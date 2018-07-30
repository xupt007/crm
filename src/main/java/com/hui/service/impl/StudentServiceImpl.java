package com.hui.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.common.MyCommon;
import com.hui.entity.CrmClassCustom;
import com.hui.entity.CrmRefer;
import com.hui.entity.CrmStudent;
import com.hui.entity.CrmStudentCustom;
import com.hui.mapper.CrmClassMapper;
import com.hui.mapper.CrmReferMapper;
import com.hui.mapper.CrmStudentMapper;
import com.hui.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private CrmStudentMapper crmStudentMapper;
	@Autowired
	private CrmClassMapper crmClassMapper;
	@Autowired
	private CrmReferMapper crmReferMapper;

	@Override
	public List<CrmStudentCustom> selectAll(String condition,String classid) {
		List<CrmStudentCustom> studentList = crmStudentMapper.selectAll(condition,classid);
		return studentList;
	}

	
	@Override
	public void updateOrInsertStudent(CrmStudent crmStudent) {
		if(crmStudent.getReferid()!=null && !"".equals(crmStudent.getReferid())) {
			CrmRefer refer = crmReferMapper.selectByPrimaryKey(crmStudent.getReferid());
			refer.setStatus("2");
			crmReferMapper.updateByPrimaryKeySelective(refer);
		}
		if(crmStudent.getStudentid()!=null &&!"".equals(crmStudent.getStudentid())) {
			crmStudentMapper.updateByPrimaryKeySelective(crmStudent);
		}else {
			crmStudent.setStudentid(UUID.randomUUID().toString());
			crmStudent.setCreatetime(new Date());
			crmStudent.setStatus(MyCommon.STUDENT_STATUS.get(MyCommon.STUDENT_STATUS_DEFAULT));
			crmStudentMapper.insertSelective(crmStudent);
		}
	}



	@Override
	public CrmStudentCustom selectById(String studentid) {
		CrmStudentCustom studentCustom = crmStudentMapper.selectById(studentid);
		return studentCustom;
	}



	@Override
	public void setClassNameAndCourseName(CrmStudentCustom crmStudentCustom) {
		if(crmStudentCustom.getClassid()!=null && !"".equals(crmStudentCustom.getClassid())) {
			CrmClassCustom classCustom = crmClassMapper.selectClassById(crmStudentCustom.getClassid());
			crmStudentCustom.setClassName(classCustom.getName());
			crmStudentCustom.setCourseName(classCustom.getCourseName());
		}
		
	}

}
