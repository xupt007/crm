package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmCourseType;
import com.hui.entity.CrmCourseTypeCustom;
import com.hui.entity.CrmCourseTypeExample;

public interface CrmCourseTypeMapper {
    int countByExample(CrmCourseTypeExample example);

    int deleteByExample(CrmCourseTypeExample example);

    int deleteByPrimaryKey(String coursetypeid);

    int insert(CrmCourseType record);

    int insertSelective(CrmCourseType record);

    List<CrmCourseType> selectByExample(CrmCourseTypeExample example);

    CrmCourseType selectByPrimaryKey(String coursetypeid);

    int updateByExampleSelective(@Param("record") CrmCourseType record, @Param("example") CrmCourseTypeExample example);

    int updateByExample(@Param("record") CrmCourseType record, @Param("example") CrmCourseTypeExample example);

    int updateByPrimaryKeySelective(CrmCourseType record);

    int updateByPrimaryKey(CrmCourseType record);
    
    //---------------------------------------------
    List<CrmCourseTypeCustom> selectAll(@Param("course")CrmCourseTypeCustom crmCourseTypeCustom);
}