package com.alien.entity;

import com.alien.common.BaseEntity;
import com.alien.entity.vo.SnailRoomVO;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

/**
 * Created by alien on 2020/3/20 0020 18:18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SnailHouse extends BaseEntity<SnailHouse> {

    private Integer userId;

    private Integer locationId;

    private Integer type;//租房类型（1合租，2整租）

    private String name;

    private String address;

    private Long housePrice;

    private String houseImg;

    private Integer bedroom;

    private Integer bath;

    private String bathImg1;

    private String bathImg2;

    private Integer kitchen;

    private String kitchenImg1;

    private String kitchenImg2;

    private Integer living;

    private String livingImg1;

    private String livingImg2;

    private String vrImg1;

    private String vrImg2;

    private String vrImg3;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date validTime;

    private String desp;

    private SnailRoom snailRoom;
    private List<SnailRoom> snailRooms;
    private List<SnailRoomVO> snailRoomVOS;
    private String keyword;

    private String maxPriceVO;
    private Long maxPrice;

    private String minPriceVO;
    private Long minPrice;

}

