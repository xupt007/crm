package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmClass;
import com.hui.entity.CrmClassCustom;
import com.hui.entity.CrmClassExample;

public interface CrmClassMapper {
    int countByExample(CrmClassExample example);

    int deleteByExample(CrmClassExample example);

    int deleteByPrimaryKey(String classid);

    int insert(CrmClass record);

    int insertSelective(CrmClass record);

    List<CrmClass> selectByExample(CrmClassExample example);

    CrmClass selectByPrimaryKey(String classid);

    int updateByExampleSelective(@Param("record") CrmClass record, @Param("example") CrmClassExample example);

    int updateByExample(@Param("record") CrmClass record, @Param("example") CrmClassExample example);

    int updateByPrimaryKeySelective(CrmClass record);

    int updateByPrimaryKey(CrmClass record);
    
    //---------------------------------------------------------
    //查询所有
    List<CrmClassCustom> selectAll();
    //通过id查询
    CrmClassCustom selectClassById(@Param("classId")String classId);
    
    
}