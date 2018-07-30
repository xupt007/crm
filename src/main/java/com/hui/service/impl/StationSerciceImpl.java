package com.hui.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.common.MyCommon;
import com.hui.entity.CrmClass;
import com.hui.entity.CrmStation;
import com.hui.entity.CrmStationCustom;
import com.hui.entity.CrmStudent;
import com.hui.mapper.CrmClassMapper;
import com.hui.mapper.CrmStationMapper;
import com.hui.mapper.CrmStudentMapper;
import com.hui.service.StationService;


@Service
public class StationSerciceImpl implements StationService{

	@Autowired
	private CrmStationMapper crmStationMapper;
	@Autowired
	private CrmClassMapper crmClassMapper;
	@Autowired
	private CrmStudentMapper crmStudentMapper;
	@Override
	public List<CrmStationCustom> selectAll() {
		List<CrmStationCustom> stationList = crmStationMapper.selectAll();
		return stationList;
	}

	@Override
	public void insertStation(CrmStation crmStation) {
		crmStation.setStationid(UUID.randomUUID().toString());
		crmStation.setCreatedate(new Date());
		crmStationMapper.insert(crmStation);
		String beforeclassid = crmStation.getBeforeclassid();
		String afterclassid = crmStation.getAfterclassid();
		CrmClass beforeClass = crmClassMapper.selectByPrimaryKey(beforeclassid);
		CrmClass afterClass = crmClassMapper.selectByPrimaryKey(afterclassid);
		CrmStudent student = crmStudentMapper.selectByPrimaryKey(crmStation.getStudentid());
		student.setClassid(crmStation.getAfterclassid());
		if("升级".equals(crmStation.getFlag())) {
			//之前班总数减一
			beforeClass.setTotalcount(beforeClass.getTotalcount()-1);
			//之前班升级数加一
			beforeClass.setUpgradecount(beforeClass.getUpgradecount()+1);
			//之后班总数加一
			afterClass.setTotalcount(afterClass.getTotalcount()+1);
			student.setStatus(MyCommon.STUDENT_STATUS.get(MyCommon.STUDENT_STATUS_UPGRADE));
		}else if("转班".equals(crmStation.getFlag())) {
			//之前班总数减一
			beforeClass.setTotalcount(beforeClass.getTotalcount()-1);
			beforeClass.setChangecount(beforeClass.getChangecount()+1);
			afterClass.setTotalcount(afterClass.getTotalcount()+1);
			student.setStatus(MyCommon.STUDENT_STATUS.get(MyCommon.STUDENT_STATUS_CHANGE));
		}
		crmClassMapper.updateByPrimaryKeySelective(beforeClass);
		crmClassMapper.updateByPrimaryKeySelective(afterClass);
		crmStudentMapper.updateByPrimaryKeySelective(student);
	}

}
