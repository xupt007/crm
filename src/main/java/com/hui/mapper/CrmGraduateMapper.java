package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmGraduate;
import com.hui.entity.CrmGraduateCustom;
import com.hui.entity.CrmGraduateExample;

public interface CrmGraduateMapper {
    int countByExample(CrmGraduateExample example);

    int deleteByExample(CrmGraduateExample example);

    int deleteByPrimaryKey(String granduateid);

    int insert(CrmGraduate record);

    int insertSelective(CrmGraduate record);

    List<CrmGraduate> selectByExample(CrmGraduateExample example);

    CrmGraduate selectByPrimaryKey(String granduateid);

    int updateByExampleSelective(@Param("record") CrmGraduate record, @Param("example") CrmGraduateExample example);

    int updateByExample(@Param("record") CrmGraduate record, @Param("example") CrmGraduateExample example);

    int updateByPrimaryKeySelective(CrmGraduate record);

    int updateByPrimaryKey(CrmGraduate record);
    
    List<CrmGraduateCustom> selectAll();
}