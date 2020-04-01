package com.alien.mapper;

import com.alien.entity.SnailOrder;
import com.alien.entity.SnailSteward;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailStewardMapper {

    SnailSteward select(SnailSteward record);

    List<SnailSteward> list(SnailSteward record);

    void update(SnailSteward record);

    void insert(SnailSteward record);

    void detele(SnailOrder record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailSteward record);

    int insertSelective(SnailSteward record);

    SnailSteward selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailSteward record);

    int updateByPrimaryKey(SnailSteward record);
}