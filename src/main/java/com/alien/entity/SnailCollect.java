package com.alien.entity;

import com.alien.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by alien on 2020/3/20 0020 18:18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SnailCollect extends BaseEntity<SnailCollect> {
    private String name;
    private Integer type;
}

