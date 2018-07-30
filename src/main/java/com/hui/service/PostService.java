package com.hui.service;

import java.util.List;

import com.hui.entity.CrmPost;
import com.hui.entity.CrmPostCustom;

public interface PostService {
	public List<CrmPostCustom> selectAll();
	
	public void updatePost(CrmPost crmPost);
	
	public CrmPostCustom selectPostById(String postid);
	
	public List<CrmPost> selectPostByDepid(String depid);
	
	
}
