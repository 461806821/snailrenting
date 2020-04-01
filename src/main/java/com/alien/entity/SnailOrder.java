package com.alien.entity;

import com.alien.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * Created by alien on 2020/3/20 0020 18:18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SnailOrder extends BaseEntity<SnailOrder> {

    private Integer userId;

    private Integer houseId;

    private Integer roomId;

    private Short payMoney;

    private Short discountMoney;

    private Date liveTime;

    private Date payTime;

    private Date validTime;

    private Integer liveDay;
}

