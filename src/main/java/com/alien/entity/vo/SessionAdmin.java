package com.alien.entity.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by alien on 2020/3/20 0020 18:18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SessionAdmin {

    private Integer id;

    private Integer role;//0超级管理员，1管理员，2管家：预约看房，定制房源，3审核员，4维修

    private String rolename;

    private String username;

}

