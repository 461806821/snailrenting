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
public class SnailBanner extends BaseEntity<SnailBanner> {

    private Integer type;//1优惠房源，2推荐房源

    private String name;

    private Integer roomId;
}

