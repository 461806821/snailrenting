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
public class SnailUser extends BaseEntity<SnailUser> {

    private String username;

    private String email;

    private String password;

    private String name;

    private Integer sex;//性别（0.女，1男）

    private String headImg;

    private String phone;

    private String address;

    private String identity;

    private Integer certificate;//认证（0普通，1租客，2房东，3已租）

    private Integer loginNum;

    private Date loginTime;

    private String password1;
    private String repassword;
    private String webidentity;
    private List<Integer> roomIds;//收藏房源
    private String keyword;
}

