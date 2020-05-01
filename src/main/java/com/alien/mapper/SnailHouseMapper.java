package com.alien.mapper;

import com.alien.entity.SnailHouse;
import com.alien.entity.SnailMessage;
import com.alien.entity.SnailRoom;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.entity.vo.SnailRoomVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SnailHouseMapper {

    List<SnailHouse> houseList(SnailHouseVO record);
    List<SnailRoom> roomList(SnailHouseVO record);
    List<SnailHouse> webhouseList(SnailHouseVO record);
    SnailHouse selectHouse(SnailRoomVO record);
    SnailHouse selectRoom(SnailHouseVO record);

    List<SnailRoom> selectRooms(SnailHouse record);

    void updateHouse(SnailHouseVO record);
    void updateRoom(SnailRoomVO record);

    void insertHouse(SnailHouseVO record);
    void insertRoom(SnailRoomVO record);
    void insertRooms(@Param("list") List<SnailRoomVO> list);//批量插入

    void delete(SnailHouseVO record);
    void updateState(SnailRoomVO record);

    void updatePraise(SnailRoomVO record);

}