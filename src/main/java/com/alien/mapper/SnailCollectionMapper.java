package com.alien.mapper;

import com.alien.entity.SnailCollection;
import com.alien.entity.SnailRoom;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailCollectionMapper {

    List<SnailRoom> list(SnailCollection record);

    void insert(SnailCollection record);

    void delete(SnailCollection record);

    Integer count(SnailCollection record);

}