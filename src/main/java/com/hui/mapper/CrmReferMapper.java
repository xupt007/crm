package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmRefer;
import com.hui.entity.CrmReferCustom;
import com.hui.entity.CrmReferExample;

public interface CrmReferMapper {
    int countByExample(CrmReferExample example);

    int deleteByExample(CrmReferExample example);

    int deleteByPrimaryKey(String referid);

    int insert(CrmRefer record);

    int insertSelective(CrmRefer record);

    List<CrmRefer> selectByExample(CrmReferExample example);

    CrmRefer selectByPrimaryKey(String referid);

    int updateByExampleSelective(@Param("record") CrmRefer record, @Param("example") CrmReferExample example);

    int updateByExample(@Param("record") CrmRefer record, @Param("example") CrmReferExample example);

    int updateByPrimaryKeySelective(CrmRefer record);

    int updateByPrimaryKey(CrmRefer record);
    
    //------多表查询
    
    List<CrmReferCustom> selectAll(@Param("condition") String condition,@Param("status")String status);
    
    //通过id查询
    CrmReferCustom selectReferById(@Param("referid") String referid);
    
}