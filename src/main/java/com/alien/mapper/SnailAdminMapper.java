package com.alien.mapper;

import com.alien.entity.SnailAdmin;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SnailAdminMapper {

    SnailAdmin select(SnailAdmin record);

    List<SnailAdmin> list(SnailAdmin record);

    void update(SnailAdmin record);

    void insert(SnailAdmin record);

    void delete(SnailAdmin record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailAdmin record);

    int insertSelective(SnailAdmin record);

    SnailAdmin selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailAdmin record);

    int updateByPrimaryKey(SnailAdmin record);
}