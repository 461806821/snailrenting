package com.alien.mapper;

import com.alien.entity.SnailOrder;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailOrderMapper {

    SnailOrder select(SnailOrder record);

    List<SnailOrder> list(SnailOrder record);

    void update(SnailOrder record);

    void insert(SnailOrder record);

    void delete(SnailOrder record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailOrder record);

    int insertSelective(SnailOrder record);

    SnailOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailOrder record);

    int updateByPrimaryKey(SnailOrder record);
}