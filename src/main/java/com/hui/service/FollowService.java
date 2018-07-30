package com.hui.service;

import java.util.List;

import com.hui.entity.CrmFollow;
import com.hui.entity.CrmFollowCustom;

public interface FollowService {
	
	public List<CrmFollowCustom> selectFollow(String referid);
	
	public void insertFollow(CrmFollow crmFollow);
}
