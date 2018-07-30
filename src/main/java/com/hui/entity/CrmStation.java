package com.hui.entity;

import java.util.Date;

public class CrmStation {
    private String stationid;

    private String studentid;

    private String flag;

    private String staffid;

    private Date createdate;

    private String beforeclassid;

    private String afterclassid;

    public String getStationid() {
        return stationid;
    }

    public void setStationid(String stationid) {
        this.stationid = stationid == null ? null : stationid.trim();
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid == null ? null : studentid.trim();
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag == null ? null : flag.trim();
    }

    public String getStaffid() {
        return staffid;
    }

    public void setStaffid(String staffid) {
        this.staffid = staffid == null ? null : staffid.trim();
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public String getBeforeclassid() {
        return beforeclassid;
    }

    public void setBeforeclassid(String beforeclassid) {
        this.beforeclassid = beforeclassid == null ? null : beforeclassid.trim();
    }

    public String getAfterclassid() {
        return afterclassid;
    }

    public void setAfterclassid(String afterclassid) {
        this.afterclassid = afterclassid == null ? null : afterclassid.trim();
    }
}