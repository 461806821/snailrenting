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
public class SnailMessage extends BaseEntity<SnailMessage> {

    private Integer userId;

    private Integer type;

    private String content;

    private Long praise;


    private List<SnailReply> snailReplys;
    private SnailUser snailUser;
    private Integer replySize;
}

