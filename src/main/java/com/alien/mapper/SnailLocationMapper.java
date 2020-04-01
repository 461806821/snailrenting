package com.alien.mapper;

import com.alien.entity.SnailLocation;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailLocationMapper {

    SnailLocation select(SnailLocation record);

    List<SnailLocation> list();

    void update(SnailLocation record);

    void insert(SnailLocation record);

    void delete(SnailLocation record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailLocation record);

    int insertSelective(SnailLocation record);

    SnailLocation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailLocation record);

    int updateByPrimaryKey(SnailLocation record);
}