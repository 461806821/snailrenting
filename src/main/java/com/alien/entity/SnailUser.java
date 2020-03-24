package com.alien.entity;

import com.alien.common.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Created by alien on 2020/3/20 0020 18:18
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SnailUser extends BaseEntity<SnailUser> {

    private String username;
    private String password;

    private String password1;
    private List<String> ids;
}

