package com.alien.mapper;

import com.alien.entity.SnailHouse;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:35
 */
@Repository
public interface HouseMapper {

    List<SnailHouse> list ();

    SnailHouse select(SnailHouse user);

    void insert(SnailHouse user);

    void update(SnailHouse user);

    void delete(SnailHouse user);
}
