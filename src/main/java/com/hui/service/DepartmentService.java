package com.hui.service;

import java.util.List;

import com.hui.entity.CrmDepartment;

public interface DepartmentService {
	public List<CrmDepartment> selectAllDepartment();
	
	public CrmDepartment selectDepartmentById(String depid);
	
	public void updateDepartment(CrmDepartment department);
	

	
}
