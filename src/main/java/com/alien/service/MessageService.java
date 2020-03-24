package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailMessage;
import com.alien.mapper.MessageMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:34
 */
@Log4j2
@Service
public class MessageService {

    @Autowired
    private MessageMapper houseMapper;

    public ModelAndView list(SnailMessage house){
        PageHelper.startPage(house.getPageNum(), house.getPageSize());
        List<SnailMessage> list= houseMapper.list();
        PageInfo<SnailMessage> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_userlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView update(SnailMessage user){
        houseMapper.update(user);
        return ModelAndViewResult.succeed("/Admin_userupdate",null, "ok", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView delete(SnailMessage user){
        houseMapper.update(user);
        return ModelAndViewResult.succeed("/Admin_userlist",null, "ok", CodeEnum.MSG_SUCCES.getMsg());
    }

}
