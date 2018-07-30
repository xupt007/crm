package com.hui.service;

import java.util.List;

import com.hui.entity.CrmRefer;
import com.hui.entity.CrmReferCustom;

public interface ReferService {
	public List<CrmReferCustom> selectAll(String condition,String status);
	
	public CrmReferCustom selectReferById(String referid);
	
	public void updateOrInsertRefer(CrmRefer crmRefer);
}
