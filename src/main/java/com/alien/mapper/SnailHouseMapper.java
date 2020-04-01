package com.alien.mapper;

import com.alien.entity.SnailHouse;
import com.alien.entity.SnailRoom;
import com.alien.entity.vo.SnailHouseVO;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailHouseMapper {

    List<SnailRoom> roomList(SnailHouseVO record);

    SnailHouse selectHouse(SnailRoom record);

//    List<SnailRoom> selectRooms(SnailHouse record);

    void updateHouse(SnailHouse record);

    void insertHouse(SnailHouse record);

    void deleteHouse(SnailHouse record);

    void updateRoom(SnailRoom record);

    void insertRoom(SnailRoom record);

    void deleteRoom(SnailRoom record);

    int deleteByPrimaryKey(Integer id);

//    int insert(SnailHouse record);

    int insertSelective(SnailHouse record);

    SnailHouse selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SnailHouse record);

    int updateByPrimaryKey(SnailHouse record);
}