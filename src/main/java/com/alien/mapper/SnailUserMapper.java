package com.alien.mapper;

import com.alien.entity.SnailUser;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailUserMapper {

    SnailUser select(SnailUser record);

    List<SnailUser> list(SnailUser record);
    List<SnailUser> adminList(SnailUser record);
    void update(SnailUser record);

    void insert(SnailUser record);

    void delete(SnailUser record);

    Integer count(SnailUser record);

    void updateLoginNum(SnailUser record);

}