package com.hui.service.impl;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.entity.CrmFollow;
import com.hui.entity.CrmFollowCustom;
import com.hui.mapper.CrmFollowMapper;
import com.hui.service.FollowService;
@Service
public class FollowServiceImpl implements FollowService{

	@Autowired
	private CrmFollowMapper crmFollowMapper;
	@Override
	public List<CrmFollowCustom> selectFollow(String referid) {
		List<CrmFollowCustom> followList = crmFollowMapper.selectFollowByReferId(referid);
		return followList;
	}
	
	@Override
	public void insertFollow(CrmFollow crmFollow) {
		crmFollow.setFollowid(UUID.randomUUID().toString());
		crmFollow.setFollowtime(new Date());
		crmFollowMapper.insertSelective(crmFollow);
	}

}
