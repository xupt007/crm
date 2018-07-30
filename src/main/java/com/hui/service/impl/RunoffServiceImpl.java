package com.hui.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.common.MyCommon;
import com.hui.entity.CrmClass;
import com.hui.entity.CrmRunoff;
import com.hui.entity.CrmRunoffCustom;
import com.hui.entity.CrmStudent;
import com.hui.mapper.CrmClassMapper;
import com.hui.mapper.CrmRunoffMapper;
import com.hui.mapper.CrmStudentMapper;
import com.hui.service.RunoffService;

@Service
public class RunoffServiceImpl implements RunoffService{

	@Autowired
	private CrmRunoffMapper crmRunoffMapperl;
	@Autowired
	private CrmStudentMapper crmStudentMapper;
	@Autowired
	private CrmClassMapper crmClassMapper;
	@Override
	public List<CrmRunoffCustom> selectAll() {
		List<CrmRunoffCustom> runoffList = crmRunoffMapperl.selectAll();
		return runoffList;
	}

	@Override
	public void insertRunoff(CrmRunoff crmRunoff) {
		crmRunoff.setRunoffid(UUID.randomUUID().toString());
		crmRunoff.setCreatedate(new Date());
		crmRunoffMapperl.insertSelective(crmRunoff);
		CrmStudent student = crmStudentMapper.selectByPrimaryKey(crmRunoff.getStudentid());
		CrmClass class1 = crmClassMapper.selectByPrimaryKey(student.getClassid());
		class1.setTotalcount(class1.getTotalcount()-1);
		class1.setRunoffcount(class1.getRunoffcount()-1);
		crmClassMapper.updateByPrimaryKeySelective(class1);
		student.setStatus(MyCommon.STUDENT_STATUS.get(MyCommon.STUDENT_STATUS_RUNOFF));
		crmStudentMapper.updateByPrimaryKeySelective(student);
	}

}
