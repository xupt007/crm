package com.hui.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;

import com.hui.entity.CrmFollow;
import com.hui.entity.CrmFollowCustom;
import com.hui.entity.CrmFollowExample;

public interface CrmFollowMapper {
    int countByExample(CrmFollowExample example);

    int deleteByExample(CrmFollowExample example);

    int deleteByPrimaryKey(String followid);

    int insert(CrmFollow record);

    int insertSelective(CrmFollow record);

    List<CrmFollow> selectByExample(CrmFollowExample example);

    CrmFollow selectByPrimaryKey(String followid);

    int updateByExampleSelective(@Param("record") CrmFollow record, @Param("example") CrmFollowExample example);

    int updateByExample(@Param("record") CrmFollow record, @Param("example") CrmFollowExample example);

    int updateByPrimaryKeySelective(CrmFollow record);

    int updateByPrimaryKey(CrmFollow record);
    
    //------
    List<CrmFollowCustom> selectFollowByReferId(@Param("referid")String referid);
}