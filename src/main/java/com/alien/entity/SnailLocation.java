package com.alien.entity;

import com.alien.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created by alien on 2020/3/19 0019 13:22
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SnailLocation extends BaseEntity<SnailLocation> {

    private Integer parentId;

    private Integer type;//1省，2市，3区，4街

    private String name;

//    private String province;
//
//    private String city;
//
//    private String district;
//
//    private String street;
//
//    List<String> provinces;
//
//    List<String> districts;
//
//    List<String> streets;
}

