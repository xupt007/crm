package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmStudent;
import com.hui.entity.CrmStudentCustom;
import com.hui.entity.CrmStudentExample;

public interface CrmStudentMapper {
    int countByExample(CrmStudentExample example);

    int deleteByExample(CrmStudentExample example);

    int deleteByPrimaryKey(String studentid);

    int insert(CrmStudent record);

    int insertSelective(CrmStudent record);

    List<CrmStudent> selectByExample(CrmStudentExample example);

    CrmStudent selectByPrimaryKey(String studentid);

    int updateByExampleSelective(@Param("record") CrmStudent record, @Param("example") CrmStudentExample example);

    int updateByExample(@Param("record") CrmStudent record, @Param("example") CrmStudentExample example);

    int updateByPrimaryKeySelective(CrmStudent record);

    int updateByPrimaryKey(CrmStudent record);
    
    
    //-------------------
    List<CrmStudentCustom> selectAll(@Param("condition") String condition,@Param("classid")String classid);
    
    CrmStudentCustom selectById(@Param("studentid")String studentid);
}