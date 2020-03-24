package com.alien.mapper;

import com.alien.entity.SnailCollect;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:35
 */
@Repository
public interface CollectionMapper {

    List<SnailCollect> list();

    SnailCollect select(SnailCollect user);

    void insert(SnailCollect user);

    void update(SnailCollect user);

    void delete(SnailCollect user);
}
