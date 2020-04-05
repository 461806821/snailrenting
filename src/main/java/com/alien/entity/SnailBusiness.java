package com.alien.entity;

import com.alien.common.BaseEntity;
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
public class SnailBusiness extends BaseEntity<SnailBusiness> {

    private Integer userId;

    private Integer type;//1报修,2退租,3预约看房,4定制房源,5其他问题

    private String desp;

    private Integer state;//状态（0待解决，1处理中，2已解决）
}

