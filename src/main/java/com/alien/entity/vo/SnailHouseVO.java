package com.alien.entity.vo;

import com.alien.common.BaseEntity;
import com.alien.entity.SnailRoom;
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
public class SnailHouseVO extends BaseEntity<SnailHouseVO> {

    private Integer userId;

    private Integer locationId;

    private String typeVO;
    private Integer type;

    private String name;

    private String address;

    private String housePrice;

    private String houseImg;

    private String bedroomVO;
    private Integer bedroom;

    private String bathVO;
    private Integer bath;

    private String bathImg1;

    private String bathImg2;

    private String kitchenVO;
    private Integer kitchen;

    private String kitchenImg1;

    private String kitchenImg2;

    private String livingVO;
    private Integer living;

    private String livingImg1;

    private String livingImg2;

    private Date validTime;

    private String desp;

    private SnailRoom snailRoom;
    private List<SnailRoom> snailRooms;
    private String keyword;

    private String maxPriceVO;
    private Integer maxPrice;

    private String minPriceVO;
    private Integer minPrice;
}

