package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmPost;
import com.hui.entity.CrmPostCustom;
import com.hui.entity.CrmPostExample;

public interface CrmPostMapper {
    int countByExample(CrmPostExample example);

    int deleteByExample(CrmPostExample example);

    int deleteByPrimaryKey(String postid);

    int insert(CrmPost record);

    int insertSelective(CrmPost record);

    List<CrmPost> selectByExample(CrmPostExample example);

    CrmPost selectByPrimaryKey(String postid);

    int updateByExampleSelective(@Param("record") CrmPost record, @Param("example") CrmPostExample example);

    int updateByExample(@Param("record") CrmPost record, @Param("example") CrmPostExample example);

    int updateByPrimaryKeySelective(CrmPost record);

    int updateByPrimaryKey(CrmPost record);
    
    //多表查询
    
    List<CrmPostCustom> selectAll();
    
    CrmPostCustom selectPostById(@Param("postid") String postid);
}