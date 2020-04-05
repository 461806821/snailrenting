package com.alien.mapper;

import com.alien.entity.SnailInform;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SnailInformMapper {

    List<SnailInform> list(SnailInform record);

//    SnailInform select(SnailInform record);

//    void update(SnailInform record);

    void insert(SnailInform record);

    void delete(SnailInform record);

    void updatePushState(SnailInform record);

    void updateState(SnailInform record);

}