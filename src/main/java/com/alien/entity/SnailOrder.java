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

    private String contract;//合同号

    private Integer state;//状态（0审核中，1通过，2未通过）

    private Integer payState;//支付状态(0未支付，1已支付）

    private Short payMoney;

    private Short discountMoney;

    private Date liveTime;//入住日期

    private Date payTime;//支付日期

    private Date payValidTime;//支付截止日期

    private Date validTime;//预计截止日期

    //vo
    private Integer liveDay;//
}

