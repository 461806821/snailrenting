package com.alien.mapper;

import com.alien.entity.SnailMessage;
import com.alien.entity.SnailReply;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailMessageMapper {

    List<SnailMessage> list(SnailMessage record);

//    SnailMessage select(SnailMessage record);

    void updatePraise(SnailMessage record);

    void insertMessage(SnailMessage record);
    void insertReply(SnailReply record);

    void delete(SnailMessage record);

}