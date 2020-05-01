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
public class SnailReply extends BaseEntity<SnailReply> {

    private Integer messageId;

    private Integer userId;

    private String content;

    private Long praise;


    private SnailUser snailUser;

}

