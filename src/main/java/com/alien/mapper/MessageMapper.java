package com.alien.mapper;

import com.alien.entity.SnailMessage;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:35
 */
@Repository
public interface MessageMapper {

    List<SnailMessage> list();

    SnailMessage select(SnailMessage user);

    void insert(SnailMessage user);

    void update(SnailMessage user);

    void delete(SnailMessage user);
}
