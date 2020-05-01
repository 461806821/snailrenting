package com.alien.entity;

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
public class SnailRoom extends BaseEntity<SnailRoom> {

    private Integer houseId;

    private String name;

    private Long price;

    private Long sale;

    private String bedroomImg1;

    private String bedroomImg2;

    private String desp;

    private Integer state;//状态（0出租中，1已租，2停用，3审核中，4装修，5准备签约）

    private Long praise;


    private Integer bannerType;//广告位类型（1优惠房源，2推荐房源）
//    private String username;
//    private String sex;
    private Integer collectionId;
    private SnailUser snailUser;
}

