package com.hui.service;

import java.util.List;

import com.hui.entity.CrmRunoff;
import com.hui.entity.CrmRunoffCustom;

public interface RunoffService {
	public List<CrmRunoffCustom> selectAll();
	
	public void insertRunoff(CrmRunoff crmRunoff);
}
