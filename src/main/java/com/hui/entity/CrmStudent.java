package com.hui.entity;

import java.util.Date;

public class CrmStudent {
    private String studentid;

    private String name;

    private String telephone;

    private String identity;

    private String qq;

    private String gender;

    private Integer musttuition;

    private Integer actualtuition;

    private String email;

    private String school;

    private String education;

    private String professional;

    private String identityaddress;

    private String address;

    private String remark;

    private String hometelephone;

    private String homecontact;

    private String status;

    private String classid;

    private String referid;

    private Date createtime;

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid == null ? null : studentid.trim();
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

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity == null ? null : identity.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Integer getMusttuition() {
        return musttuition;
    }

    public void setMusttuition(Integer musttuition) {
        this.musttuition = musttuition;
    }

    public Integer getActualtuition() {
        return actualtuition;
    }

    public void setActualtuition(Integer actualtuition) {
        this.actualtuition = actualtuition;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getProfessional() {
        return professional;
    }

    public void setProfessional(String professional) {
        this.professional = professional == null ? null : professional.trim();
    }

    public String getIdentityaddress() {
        return identityaddress;
    }

    public void setIdentityaddress(String identityaddress) {
        this.identityaddress = identityaddress == null ? null : identityaddress.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getHometelephone() {
        return hometelephone;
    }

    public void setHometelephone(String hometelephone) {
        this.hometelephone = hometelephone == null ? null : hometelephone.trim();
    }

    public String getHomecontact() {
        return homecontact;
    }

    public void setHomecontact(String homecontact) {
        this.homecontact = homecontact == null ? null : homecontact.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid == null ? null : classid.trim();
    }

    public String getReferid() {
        return referid;
    }

    public void setReferid(String referid) {
        this.referid = referid == null ? null : referid.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}