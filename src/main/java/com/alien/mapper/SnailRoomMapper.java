package com.alien.mapper;

import com.alien.entity.SnailOrder;
import com.alien.entity.SnailRoom;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailRoomMapper {

    SnailRoom select(SnailRoom record);

    List<SnailRoom> list(SnailRoom record);

    void update(SnailRoom record);

    void insert(SnailRoom record);

    void delete(SnailOrder record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailRoom record);

    int insertSelective(SnailRoom record);

    SnailRoom selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailRoom record);

    int updateByPrimaryKey(SnailRoom record);
}