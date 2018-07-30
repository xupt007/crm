package com.hui.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.entity.CrmRefer;
import com.hui.entity.CrmReferCustom;
import com.hui.mapper.CrmReferMapper;
import com.hui.service.ReferService;

@Service
public class ReferServiceImpl implements ReferService{

	@Autowired
	private CrmReferMapper crmReferMapper;
	
	//查询所有和多条件模糊查询
	@Override
	public List<CrmReferCustom> selectAll(String condition,String status) {
		List<CrmReferCustom> referList = crmReferMapper.selectAll(condition,status);
		return referList;
	}

	//通过id查询
	@Override
	public CrmReferCustom selectReferById(String referid) {
		CrmReferCustom referCustom = crmReferMapper.selectReferById(referid);
		return referCustom;
	}

	//修改或者添加
	@Override
	public void updateOrInsertRefer(CrmRefer crmRefer) {
		if(crmRefer.getReferid()!=null &&!"".equals(crmRefer.getReferid()) ) {
			crmReferMapper.updateByPrimaryKeySelective(crmRefer);
		}else {
			crmRefer.setReferid(UUID.randomUUID().toString());
			crmRefer.setCreatetime(new Date());
			crmReferMapper.insertSelective(crmRefer);
		}
		
	}

}
