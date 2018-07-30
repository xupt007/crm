package com.hui.entity;

import java.util.Date;

public class CrmRunoff {
    private String runoffid;

    private String studentid;

    private String staffid;

    private Date createdate;

    private String isrefund;

    private String refundamount;

    private String remark;

    public String getRunoffid() {
        return runoffid;
    }

    public void setRunoffid(String runoffid) {
        this.runoffid = runoffid == null ? null : runoffid.trim();
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid == null ? null : studentid.trim();
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

    public String getIsrefund() {
        return isrefund;
    }

    public void setIsrefund(String isrefund) {
        this.isrefund = isrefund == null ? null : isrefund.trim();
    }

    public String getRefundamount() {
        return refundamount;
    }

    public void setRefundamount(String refundamount) {
        this.refundamount = refundamount == null ? null : refundamount.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}