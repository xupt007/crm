package com.hui.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hui.common.MyCommon;
import com.hui.entity.CrmClass;
import com.hui.entity.CrmClassCustom;
import com.hui.entity.CrmClassExample;
import com.hui.mapper.CrmClassMapper;
import com.hui.service.ClassService;
import com.hui.util.MyUtil;

@Service
public class ClassServiceImpl implements ClassService{
	
	@Autowired
	private CrmClassMapper crmClassMapper;
	
	//查询所有班级
	@Override
	public List<CrmClassCustom> selectAll() {
		List<CrmClassCustom> classList = crmClassMapper.selectAll();
		return classList;
	}

	//修改或者添加新班级
	@Override
	public void updateOrInserClass(CrmClass crmClass) {
		if(crmClass.getClassid()!=null && !"".equals(crmClass.getClassid())) {
			crmClassMapper.updateByPrimaryKeySelective(crmClass);
		}else {
			crmClass.setClassid(UUID.randomUUID().toString());
			crmClass.setTotalcount(0);
			crmClass.setChangecount(0);
			crmClass.setRunoffcount(0);
			crmClass.setUpgradecount(0);
			crmClassMapper.insertSelective(crmClass);
		}
	}

	//通过id查询班级
	@Override
	public CrmClassCustom selectClassById(String classId) {
		CrmClassCustom crmClassCustom = crmClassMapper.selectClassById(classId);
		return crmClassCustom;
	}
	
	@Override
	public void insertSchedule(MultipartFile schedule,String classid) {
		CrmClassCustom classCustom = crmClassMapper.selectClassById(classid);
		String filename = schedule.getOriginalFilename();
		String name = classCustom.getName();
		String courseName = classCustom.getCourseName();
		String newFileName=courseName+"班"+name+"课程表"+filename.substring(filename.lastIndexOf("."));
		if(classCustom.getUploadfilename()!=null && !"".equals(classCustom.getUploadfilename())) {
			MyUtil.deleteSchedule(classCustom.getUploadfilename());
		}
		MyUtil.insertSchedule(schedule,newFileName);
		classCustom.setUploadfilename(newFileName);
		classCustom.setUploadtime(new Date(new java.util.Date().getTime()));
		crmClassMapper.updateByPrimaryKeySelective(classCustom);
	}
	
	//下载文件
	@Override
	public ResponseEntity<byte[]> downloadSchedule(String classid){
		ResponseEntity<byte[]> responseEntity=null;
		try {
		CrmClassCustom classCustom = this.selectClassById(classid);
		String fileName = classCustom.getUploadfilename();
		File file = new File(MyCommon.FILEPATH+fileName);
	    HttpHeaders headers = new HttpHeaders();
	    fileName=new String(fileName.getBytes("UTF-8"),"iso-8859-1");
	    headers.setContentDispositionFormData("attachment", fileName);   
	    headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);  
	    	responseEntity = new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),    
			        headers, HttpStatus.CREATED);
		} catch (IOException e) {
			e.printStackTrace();
		}
	   return responseEntity;
	}
	
	@Override
	public List<CrmClass> selectClassByCourse(String courseid){
		CrmClassExample crmClassExample = new CrmClassExample();
		crmClassExample.createCriteria().andCoursetypeidEqualTo(courseid);
		List<CrmClass> classList = crmClassMapper.selectByExample(crmClassExample);
		return classList;
	}

	@Override
	public void setClassStatus() {
		CrmClassExample crmClassExample = new CrmClassExample();
		crmClassExample.createCriteria();
		List<CrmClass> classList = crmClassMapper.selectByExample(crmClassExample);
		for (CrmClass crmClass : classList) {
			Date begintime = crmClass.getBegintime();
			Date endtime = crmClass.getEndtime();
			java.util.Date begintime1 = new java.util.Date(begintime.getTime());
			java.util.Date endtime1 = new java.util.Date(endtime.getTime());
			java.util.Date date = new java.util.Date();
			if(date.getTime() > endtime1.getTime()) {
				//已结束
				crmClass.setStatus(MyCommon.CLASS_STATUS.get(MyCommon.CLASS_STATUS_AFTER));
			}else if(date.getTime() < begintime1.getTime()) {
				//未开班
				crmClass.setStatus(MyCommon.CLASS_STATUS.get(MyCommon.CLASS_STATUS_BEFORE));
			}else {
				//已开班
				crmClass.setStatus(MyCommon.CLASS_STATUS.get(MyCommon.CLASS_STATUS_GOING));
			}
			crmClassMapper.updateByPrimaryKeySelective(crmClass);
		}
	}

}
