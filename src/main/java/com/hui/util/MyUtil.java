package com.hui.util;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.web.multipart.MultipartFile;

import com.hui.common.MyCommon;

public class MyUtil {
	//MD5加密
	public static String encryptMD5(String str) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] byteArray = md.digest(str.getBytes());
			BigInteger bi = new BigInteger(1,byteArray);
			return bi.toString(16);
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException();
		}
	}
	
	//分页
	public static Integer getCurrentPage(Integer currentPage) {
		if(currentPage ==null || currentPage <=0) {
			currentPage=1;
		}
		return currentPage;
	}
	
	public static void insertSchedule(MultipartFile schedule,String fileName) {
		File newFile = new File(MyCommon.FILEPATH+fileName);
		try {
			schedule.transferTo(newFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static void deleteSchedule(String fileName) {
		File file = new File(MyCommon.FILEPATH, fileName);
		file.delete();
	}
}
