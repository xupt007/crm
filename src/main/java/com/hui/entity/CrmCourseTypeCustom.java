package com.hui.entity;

import java.io.Serializable;

//就用这个类0.0 进行查询操作
//因为方便增加一些其他的属性
public class CrmCourseTypeCustom extends CrmCourseType implements Serializable{
	
	private static final long serialVersionUID = -1036304083891456151L;
	
	private Integer totalBegin;//开始学时
	private Integer totalEnd;//结束学时
	private Integer courseCostBegin;//最小费用
	private Integer courseCostEnd;//最大费用
	
	public Integer getTotalBegin() {
		return totalBegin;
	}
	public void setTotalBegin(Integer totalBegin) {
		this.totalBegin = totalBegin;
	}
	public Integer getTotalEnd() {
		return totalEnd;
	}
	public void setTotalEnd(Integer totalEnd) {
		this.totalEnd = totalEnd;
	}
	public Integer getCourseCostBegin() {
		return courseCostBegin;
	}
	public void setCourseCostBegin(Integer courseCostBegin) {
		this.courseCostBegin = courseCostBegin;
	}
	public Integer getCourseCostEnd() {
		return courseCostEnd;
	}
	public void setCourseCostEnd(Integer courseCostEnd) {
		this.courseCostEnd = courseCostEnd;
	}
	
	

}
