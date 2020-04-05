package com.alien.mapper;

import com.alien.entity.SnailMessage;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailMessageMapper {

    List<SnailMessage> list(SnailMessage record);

//    SnailMessage select(SnailMessage record);

//    void update(SnailMessage record);

    void updatePrise(SnailMessage record);

    void insert(SnailMessage record);

    void delete(SnailMessage record);

}