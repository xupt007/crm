package com.hui.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.entity.CrmDepartment;
import com.hui.entity.CrmDepartmentExample;
import com.hui.mapper.CrmDepartmentMapper;
import com.hui.service.DepartmentService;
@Service
public class DepartmentServiceImpl implements DepartmentService {
	
	@Autowired
	private CrmDepartmentMapper crmDepartmentMapper;
	
	//查询所有部门
	@Override
	public List<CrmDepartment> selectAllDepartment() {
		CrmDepartmentExample crmDepartmentExample = new CrmDepartmentExample();
		crmDepartmentExample.createCriteria();
		List<CrmDepartment> departmentList = crmDepartmentMapper.selectByExample(crmDepartmentExample);
		return departmentList;
	}
	
	//通过id查询部门,用于修改之前的参数显示
	@Override
	public CrmDepartment selectDepartmentById(String depid) {
		CrmDepartment department = crmDepartmentMapper.selectByPrimaryKey(depid);
		return department;
	}
	
	//修改部门
	@Override
	public void updateDepartment(CrmDepartment department) {
		if(department.getDepid()!=null) {
			crmDepartmentMapper.updateByPrimaryKeySelective(department);
		}else {
			if(department.getDepname()!=null && department.getDepname().trim()!="") {
				department.setDepid(UUID.randomUUID().toString());
				crmDepartmentMapper.insert(department);
			}
			
		}
	}

	

}
