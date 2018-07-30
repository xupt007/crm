package com.hui.service;

import java.util.List;

import com.hui.entity.CrmGraduate;
import com.hui.entity.CrmGraduateCustom;

public interface GraguateService {

	public List<CrmGraduateCustom> selectAll();
	
	public void insertGraduate(CrmGraduate crmGraduate);
}
