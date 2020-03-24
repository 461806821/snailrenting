package com.alien.mapper;

import com.alien.entity.SnailInform;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:35
 */
@Repository
public interface InformMapper {

    List<SnailInform> list();

    SnailInform select(SnailInform user);

    void insert(SnailInform user);

    void update(SnailInform user);

    void delete(SnailInform user);
}
