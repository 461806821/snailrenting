package com.alien.entity.vo;

import com.alien.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by alien on 2020/3/19 0019 13:22
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SnailRoomVO extends BaseEntity<SnailRoomVO> {

    private Integer houseId;

    private String name;

    private Long price;

    private Long sale;

    private String bedroomImg1;

    private String bedroomImg2;

    private String desp;

    private Integer state;

    private Long prasie;

    private Integer bannerType;

    private String username;

    private String sex;
}

