package com.alien.mapper;

import com.alien.entity.SnailCollection;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailCollectionMapper {

    SnailCollection select(SnailCollection record);

    List<SnailCollection> list(SnailCollection record);

    void update(SnailCollection record);

    void insert(SnailCollection record);

    void delete(SnailCollection record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailCollection record);

    int insertSelective(SnailCollection record);

    SnailCollection selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailCollection record);

    int updateByPrimaryKey(SnailCollection record);
}