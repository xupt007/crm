package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmRunoff;
import com.hui.entity.CrmRunoffCustom;
import com.hui.entity.CrmRunoffExample;

public interface CrmRunoffMapper {
    int countByExample(CrmRunoffExample example);

    int deleteByExample(CrmRunoffExample example);

    int deleteByPrimaryKey(String runoffid);

    int insert(CrmRunoff record);

    int insertSelective(CrmRunoff record);

    List<CrmRunoff> selectByExample(CrmRunoffExample example);

    CrmRunoff selectByPrimaryKey(String runoffid);

    int updateByExampleSelective(@Param("record") CrmRunoff record, @Param("example") CrmRunoffExample example);

    int updateByExample(@Param("record") CrmRunoff record, @Param("example") CrmRunoffExample example);

    int updateByPrimaryKeySelective(CrmRunoff record);

    int updateByPrimaryKey(CrmRunoff record);
    
    List<CrmRunoffCustom> selectAll();
}