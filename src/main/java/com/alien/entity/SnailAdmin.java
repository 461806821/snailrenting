package com.alien.entity;

import com.alien.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * Created by alien on 2020/3/19 0019 13:22
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SnailAdmin extends BaseEntity<SnailAdmin> {

    private String username;

    private String password;

    private Integer role;//0超级管理员，1管理员，2管家：预约看房，定制房源，3审核员，4维修

    private String name;

    private String phone;

    private String address;

    private String avatar;

    private String identity;


    private String password1;
}

