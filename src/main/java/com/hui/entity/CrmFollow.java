package com.hui.entity;

import java.util.Date;

public class CrmFollow {
    private String followid;

    private Date followtime;

    private String content;

    private String staffid;

    private String referid;

    public String getFollowid() {
        return followid;
    }

    public void setFollowid(String followid) {
        this.followid = followid == null ? null : followid.trim();
    }

    public Date getFollowtime() {
        return followtime;
    }

    public void setFollowtime(Date followtime) {
        this.followtime = followtime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getStaffid() {
        return staffid;
    }

    public void setStaffid(String staffid) {
        this.staffid = staffid == null ? null : staffid.trim();
    }

    public String getReferid() {
        return referid;
    }

    public void setReferid(String referid) {
        this.referid = referid == null ? null : referid.trim();
    }
}