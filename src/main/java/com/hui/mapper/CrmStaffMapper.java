package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmStaff;
import com.hui.entity.CrmStaffCustom;
import com.hui.entity.CrmStaffExample;

public interface CrmStaffMapper {
    int countByExample(CrmStaffExample example);

    int deleteByExample(CrmStaffExample example);

    int deleteByPrimaryKey(String staffid);

    int insert(CrmStaff record);

    int insertSelective(CrmStaff record);

    List<CrmStaff> selectByExample(CrmStaffExample example);

    CrmStaff selectByPrimaryKey(String staffid);

    int updateByExampleSelective(@Param("record") CrmStaff record, @Param("example") CrmStaffExample example);

    int updateByExample(@Param("record") CrmStaff record, @Param("example") CrmStaffExample example);

    int updateByPrimaryKeySelective(CrmStaff record);

    int updateByPrimaryKey(CrmStaff record);
    
    //自己的方法
    List<CrmStaffCustom> selectStaffAll(@Param("crmStaffCustom")CrmStaffCustom crmStaffCustom);
    
    CrmStaffCustom selectStaffById(@Param("staffid") String staffid);
    
}