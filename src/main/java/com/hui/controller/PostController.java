package com.hui.controller;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hui.common.MyCommon;
import com.hui.entity.CrmDepartment;
import com.hui.entity.CrmPost;
import com.hui.entity.CrmPostCustom;
import com.hui.service.impl.DepartmentServiceImpl;
import com.hui.service.impl.PostServiceImpl;
import com.hui.util.MyUtil;

@Controller
public class PostController {
	
	@Autowired
	private PostServiceImpl postServiceImpl;
	@Autowired
	private DepartmentServiceImpl departmentServiceImpl;
	
	@RequestMapping("/postList")
	public String postList(Model model ,@Param("currentPage") Integer currentPage) {
		PageHelper.startPage(MyUtil.getCurrentPage(currentPage), MyCommon.PAGESIZE);
		List<CrmPostCustom> postList = postServiceImpl.selectAll();
		PageInfo<CrmPostCustom> page = new PageInfo<CrmPostCustom>(postList);
		model.addAttribute("postList", postList);
		model.addAttribute("page", page);
		return "post/listPost";
	}
	
	@RequestMapping("/queryBeforeUpdatePost")
	public String queryBeforeUpdatePost(Model model,@Param("postid") String postid) {
		CrmPostCustom post = postServiceImpl.selectPostById(postid);
		List<CrmDepartment> depList = departmentServiceImpl.selectAllDepartment();
		model.addAttribute("post", post);
		model.addAttribute("depList", depList);
		return "post/addOrEditPost";
	}
	
	@RequestMapping("/updatePost")
	public String updatePost(Model model, @Param("CrmPost") CrmPost crmPost) {
		postServiceImpl.updatePost(crmPost);
		return this.postList(model, 1);
	}
	
	@RequestMapping("/ajaxSearchPostByDep")
	@ResponseBody
	public List<CrmPost> ajaxSearchPostByDep(String depid) {
		List<CrmPost> postList = postServiceImpl.selectPostByDepid(depid);
		return postList;
	}

}
