package com.hui.service;

import java.util.List;

import com.hui.entity.CrmStation;
import com.hui.entity.CrmStationCustom;

public interface StationService {
	public List<CrmStationCustom> selectAll();
	
	public void insertStation(CrmStation crmStation);
}
