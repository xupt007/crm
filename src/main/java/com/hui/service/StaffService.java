package com.hui.service;

import java.util.List;

import com.hui.entity.CrmStaff;
import com.hui.entity.CrmStaffCustom;

public interface StaffService {
	
	public boolean login(CrmStaff crmStaff,String loginname, String loginpwd);
	
	public boolean updatePwd(String StaffId,String oldPassword,String newPassword);
	
	public List<CrmStaffCustom> selectAllByPage(CrmStaffCustom crmStaffCustom);
	
	public CrmStaffCustom selectDepNameAndPostName(CrmStaffCustom crmStaffCustom);
	
	public void insertOrUpdateStaff(CrmStaff crmStaff);
	
	public CrmStaffCustom selectStaffById(String staffid);
}
