package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailHouse;
import com.alien.mapper.HouseMapper;
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
public class HouseService {

    @Autowired
    private HouseMapper houseMapper;

    public ModelAndView list(SnailHouse snailHouse){
        PageHelper.startPage(snailHouse.getPageNum(), snailHouse.getPageSize());
        List<SnailHouse> list= houseMapper.list();
        PageInfo<SnailHouse> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_userlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView update(SnailHouse user){
        houseMapper.update(user);
        return ModelAndViewResult.succeed("/Admin_userupdate",null, "ok", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView delete(SnailHouse user){
        houseMapper.update(user);
        return ModelAndViewResult.succeed("/Admin_userlist",null, "ok", CodeEnum.MSG_SUCCES.getMsg());
    }

}
