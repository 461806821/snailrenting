package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.*;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SessionUser;
import com.alien.entity.vo.SnailRoomVO;
import com.alien.mapper.SnailHouseMapper;
import com.alien.mapper.SnailOrderMapper;
import com.alien.mapper.SnailUserMapper;
import com.alien.utils.CodeUtils;
import com.alien.utils.DateUtils;
import com.alien.utils.UuidUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:34
 */
@Log4j2
@Service
public class OrderService {

    @Autowired
    private SnailOrderMapper orderMapper;
    @Autowired
    private SnailHouseMapper houseMapper;
    @Autowired
    private SnailUserMapper userMapper;

    public ModelAndView web_select(SnailOrder snailOrder,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailOrder.setUserId(sessionuser.getId());
        SnailOrder u=orderMapper.select(snailOrder);
        return ModelAndViewResult.succeed("/Web_order",u, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_insert_pre(SnailOrder snailOrder, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        SnailRoomVO rvo =new SnailRoomVO();
        rvo.setId(snailOrder.getRoomId());
        SnailHouse h =houseMapper.selectHouse(rvo);
        if(!h.getSnailRooms().isEmpty()){
            for (SnailRoom r:h.getSnailRooms()){
                if(r.getId() == snailOrder.getRoomId()){
                    h.setSnailRoom(r);
                }
            }
        }
        snailOrder.setHouseId(h.getId());
        //根据日期自动生成唯一合同号
        String date =DateUtils.convertDateToStr(new Date());
        String contract =CodeUtils.createCode(date);
        snailOrder.setContract(contract);
        //h.type checkType payMoney //checkType payMoney
        snailOrder.setPayMoney(h.getSnailRoom().getPrice());
        snailOrder.setDiscountMoney(h.getSnailRoom().getSale());
        snailOrder.setPayTime(new Date());
        return ModelAndViewResult.succeed("/Web_orderinsert",snailOrder, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_insert(SnailOrder snailOrder, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailOrder.setUserId(sessionuser.getId());
        //payValidTime1 payType
        snailOrder.setPayValidTime(snailOrder.getValidTime());
        snailOrder.setPayState(0);
        //checkType payMoney
        snailOrder.preInsert(sessionuser.getId());
        orderMapper.insert(snailOrder);
        //准备签约
        SnailRoomVO r =new SnailRoomVO();
        r.setId(snailOrder.getRoomId());
        r.setState(5);
        houseMapper.updateRoom(r);
        SnailOrder u=orderMapper.select(snailOrder);
        return ModelAndViewResult.succeed("/Web_order",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    public ModelAndView admin_list(SnailOrder snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailOrder> list= orderMapper.list(snailUser);
        PageInfo<SnailOrder> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_orderlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView admin_select(SnailOrder snailUser, HttpSession httpSession){
        SnailOrder u=orderMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_orderupdate",u, null, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_insert(SnailOrder snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preInsert(sessionadmin.getId());
        orderMapper.insert(snailUser);
        SnailOrder u=orderMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_orderinsert",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update(SnailOrder snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        orderMapper.update(snailUser);
        SnailOrder u=orderMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_orderupdate",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_delete(SnailOrder snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        orderMapper.delete(snailUser);

        return admin_list(snailUser,httpSession);
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update_state(SnailOrder snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        orderMapper.updateState(snailUser);
        //room已租
        SnailRoomVO r =new SnailRoomVO();
        r.setId(snailUser.getRoomId());
        r.setState(1);
        houseMapper.updateRoom(r);
        //user已租
        SnailUser u =new SnailUser();
        u.setId(snailUser.getUserId());
        u.preUpdate(sessionadmin.getId());
        userMapper.update(u);
        return admin_list(snailUser,httpSession);
    }

    public List<SnailOrder> list() {
        return orderMapper.list(new SnailOrder());
    }

    public Long count(SnailOrder snailUser){
        return orderMapper.count(snailUser);
    }

    /**
     * 每晚0点定时判断订单签约支付日期，到期更改订单支付状态
     */
    @Transactional(readOnly = false)
    public void delete(SnailOrder snailUser){
        snailUser.preUpdate(0);//0系统自动操作
        orderMapper.delete(snailUser);
    }

    /**
     * 每晚0点定时判断订单签约是否到期，到期终止订单
     */
    @Transactional(readOnly = false)
    public void updatePayState(SnailOrder snailUser){
        snailUser.preUpdate(0);//0系统自动操作
        snailUser.setPayState(0);//0未支付
        orderMapper.updatePayState(snailUser);
    }
}
