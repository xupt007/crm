package com.hui.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hui.common.MyCommon;
import com.hui.entity.CrmStation;
import com.hui.entity.CrmStationCustom;
import com.hui.service.impl.StationSerciceImpl;
import com.hui.util.MyUtil;

@Controller
public class StationController {

	@Autowired
	private StationSerciceImpl stationSerciceImpl;
	
	
	@RequestMapping("/stationList")
	public String stationList(Model model, @Param("currentPage")Integer currentPage) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmStationCustom> stationList = stationSerciceImpl.selectAll();
		PageInfo<CrmStationCustom> page = new PageInfo<CrmStationCustom>(stationList);
		model.addAttribute("stationList", stationList);
		model.addAttribute("page", page);
		return "station/listStation";
		
	}
	@RequestMapping("/insertStation")
	public String insertStation(Model model, @Param("CrmStation")CrmStation crmStation) {
		stationSerciceImpl.insertStation(crmStation);
		return this.stationList(model, null);
	}
}
