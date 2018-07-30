package com.hui.service;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import com.hui.entity.CrmClass;
import com.hui.entity.CrmClassCustom;

public interface ClassService {
	public List<CrmClassCustom> selectAll();
	
	public void updateOrInserClass(CrmClass crmClass);
	
	public CrmClassCustom selectClassById(String classId);
	
	public void insertSchedule(MultipartFile schedule,String classid);

	ResponseEntity<byte[]> downloadSchedule(String classid);
	
	public List<CrmClass> selectClassByCourse(String courseid);
	
	public void setClassStatus();
}
