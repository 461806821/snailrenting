package com.alien.mapper;

import com.alien.entity.SnailUser;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailUserMapper {

    SnailUser select(SnailUser record);

    List<SnailUser> list(SnailUser record);

    void update(SnailUser record);

    void insert(SnailUser record);

    void delete(SnailUser record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailUser record);

    int insertSelective(SnailUser record);

    SnailUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailUser record);

    int updateByPrimaryKey(SnailUser record);
}