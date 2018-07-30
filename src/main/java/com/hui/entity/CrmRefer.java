package com.hui.entity;

import java.util.Date;

public class CrmRefer {
    private String referid;

    private String name;

    private String telephone;

    private String qq;

    private String intentionlevel;

    private String coursetypeid;

    private String classid;

    private String source;

    private String status;

    private String remark;

    private String staffid;

    private Date createtime;

    public String getReferid() {
        return referid;
    }

    public void setReferid(String referid) {
        this.referid = referid == null ? null : referid.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getIntentionlevel() {
        return intentionlevel;
    }

    public void setIntentionlevel(String intentionlevel) {
        this.intentionlevel = intentionlevel == null ? null : intentionlevel.trim();
    }

    public String getCoursetypeid() {
        return coursetypeid;
    }

    public void setCoursetypeid(String coursetypeid) {
        this.coursetypeid = coursetypeid == null ? null : coursetypeid.trim();
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid == null ? null : classid.trim();
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getStaffid() {
        return staffid;
    }

    public void setStaffid(String staffid) {
        this.staffid = staffid == null ? null : staffid.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}