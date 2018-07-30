package com.hui.entity;

public class CrmStudentCustom extends CrmStudent{
    private String className;
    private String coursetypeid;
    private String courseName;

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getCoursetypeid() {
        return coursetypeid;
    }

    public void setCoursetypeid(String coursetypeid) {
        this.coursetypeid = coursetypeid;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }
}
