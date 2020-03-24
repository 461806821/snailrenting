package com.alien.mapper;

import com.alien.entity.SnailOrder;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:35
 */
@Repository
public interface OrderMapper {

    List<SnailOrder> list();

    SnailOrder select(SnailOrder user);

    void insert(SnailOrder user);

    void update(SnailOrder user);

    void delete(SnailOrder user);
}
