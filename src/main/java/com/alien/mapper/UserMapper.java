package com.alien.mapper;

import com.alien.entity.SnailUser;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 16:15
 */
@Repository
public interface UserMapper {

    List<SnailUser> list(SnailUser snailUser);

    SnailUser select(SnailUser snailUser);

    void insert(SnailUser snailUser);

    void update(SnailUser snailUser);

    void delete(SnailUser snailUser);
}
