package com.hui.service.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hui.entity.CrmDepartment;
import com.hui.entity.CrmPost;
import com.hui.entity.CrmStaff;
import com.hui.entity.CrmStaffCustom;
import com.hui.entity.CrmStaffExample;
import com.hui.mapper.CrmDepartmentMapper;
import com.hui.mapper.CrmPostMapper;
import com.hui.mapper.CrmStaffMapper;
import com.hui.service.StaffService;
import com.hui.util.MyUtil;

@Service
public class StaffServiceImpl implements StaffService {
	@Autowired
	private CrmStaffMapper crmStaffMapper;
	@Autowired
	private CrmDepartmentMapper crmDepartmentMapper;
	@Autowired
	private CrmPostMapper crmPostMapper;
	
	//登录验证功能
	@Override
	public boolean login(CrmStaff crmStaff,String loginname, String loginpwd) {
		//MD5加密
		String newPwd = MyUtil.encryptMD5(loginpwd);
		CrmStaffExample crmStaffExample = new CrmStaffExample();
		crmStaffExample.createCriteria().andLoginnameEqualTo(loginname).andLoginpwdEqualTo(newPwd);
		List<CrmStaff> staffList = crmStaffMapper.selectByExample(crmStaffExample);
		if(staffList!=null && staffList.size()!=0) {
			crmStaff.setStaffid(staffList.get(0).getStaffid());
			return true;
		}
		return false;
	}

	//修改密码功能
	@Override
	public boolean updatePwd(String staffId, String oldPassword, String newPassword) {
		System.out.println(staffId);
		CrmStaff crmStaff = crmStaffMapper.selectByPrimaryKey(staffId);
		oldPassword = MyUtil.encryptMD5(oldPassword);
		if(crmStaff!=null && crmStaff.getLoginpwd().equals(oldPassword)) {
			CrmStaff crmStaff2 = new CrmStaff();
			newPassword = MyUtil.encryptMD5(newPassword);
			crmStaff2.setLoginpwd(newPassword);
			crmStaff2.setStaffid(crmStaff.getStaffid());
			crmStaffMapper.updateByPrimaryKeySelective(crmStaff2);
		}
		return false;
	}

	//查询
	@Override
	public List<CrmStaffCustom> selectAllByPage(CrmStaffCustom crmStaffCustom) {
		if(crmStaffCustom!=null) {
			return crmStaffMapper.selectStaffAll(crmStaffCustom);
		}else {
			return crmStaffMapper.selectStaffAll(null);
		}
		
	}
	//通过depid和postid查depname和postname
	@Override
	public CrmStaffCustom selectDepNameAndPostName(CrmStaffCustom crmStaffCustom) {
		if(crmStaffCustom!=null) {
			if(crmStaffCustom.getDepid()!=null && crmStaffCustom.getDepid()!="") {
				String depid = crmStaffCustom.getDepid();
				CrmDepartment dep = crmDepartmentMapper.selectByPrimaryKey(depid);
				crmStaffCustom.setDepname(dep.getDepname());
				if(crmStaffCustom.getPostid()!=null && crmStaffCustom.getPostid()!="") {
					String postid = crmStaffCustom.getPostid();
					CrmPost post = crmPostMapper.selectByPrimaryKey(postid);
					crmStaffCustom.setPostname(post.getPostname());
				}
			}
		}
		return crmStaffCustom;
	}

	//增加或者修改员工信息
	@Override
	public void insertOrUpdateStaff(CrmStaff crmStaff) {
		//密码用md5加密
		crmStaff.setLoginpwd(MyUtil.encryptMD5(crmStaff.getLoginpwd()));
		if(crmStaff.getStaffid()!=null && crmStaff.getStaffid().trim()!="") {
			crmStaffMapper.updateByPrimaryKey(crmStaff);
		}else {
			crmStaff.setStaffid(UUID.randomUUID().toString());
			crmStaffMapper.insert(crmStaff);
		}
		
	}

	//通过id查找员工信息(用于修改前的信息回显)
	@Override
	public CrmStaffCustom selectStaffById(String staffid) {
		CrmStaffCustom staffCustom = crmStaffMapper.selectStaffById(staffid);
		return staffCustom;
	}

}
