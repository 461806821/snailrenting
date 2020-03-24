package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailOrder;
import com.alien.mapper.OrderMapper;
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
public class OrderService {

    @Autowired
    private OrderMapper houseMapper;

    public ModelAndView list(SnailOrder house){
        PageHelper.startPage(house.getPageNum(), house.getPageSize());
        List<SnailOrder> list= houseMapper.list();
        PageInfo<SnailOrder> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_userlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView update(SnailOrder user){
        houseMapper.update(user);
        return ModelAndViewResult.succeed("/Admin_userupdate",null, "ok", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView delete(SnailOrder user){
        houseMapper.update(user);
        return ModelAndViewResult.succeed("/Admin_userlist",null, "ok", CodeEnum.MSG_SUCCES.getMsg());
    }

}
