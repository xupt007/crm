package com.hui.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.entity.CrmPost;
import com.hui.entity.CrmPostCustom;
import com.hui.entity.CrmPostExample;
import com.hui.mapper.CrmPostMapper;
import com.hui.service.PostService;

@Service
public class PostServiceImpl implements PostService{
	
	@Autowired
	private CrmPostMapper crmPostMapper;

	@Override
	public List<CrmPostCustom> selectAll() {
		List<CrmPostCustom> postList = crmPostMapper.selectAll();
		return postList;
	}

	@Override
	public void updatePost(CrmPost crmPost) {
		if(crmPost.getPostid()!=null && crmPost.getPostid().trim()!="") {
			crmPostMapper.updateByPrimaryKey(crmPost);
		}
		else {
			crmPost.setPostid(UUID.randomUUID().toString());
			crmPostMapper.insert(crmPost);
		}
	}

	@Override
	public CrmPostCustom selectPostById(String postid) {
		CrmPostCustom post = crmPostMapper.selectPostById(postid);
		return post;
	}

	@Override
	public List<CrmPost> selectPostByDepid(String depid) {
		CrmPostExample crmPostExample = new CrmPostExample();
		crmPostExample.createCriteria().andDepidEqualTo(depid);
		List<CrmPost> postList = crmPostMapper.selectByExample(crmPostExample);
		return postList;
	}

}
