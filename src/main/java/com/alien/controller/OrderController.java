package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailOrder;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.entity.vo.SnailRoomVO;
import com.alien.service.OrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/18 0018 17:53
 */
@Api(value = "订单管理")
@Log4j2
@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderService orderService;

    @ApiOperation(value = "前台我的签约")
    @RequestMapping("/Web_select")
    private ModelAndView Web_select(@ModelAttribute SnailOrder snailHouse, HttpSession httpSession) {
        try {
            log.info("前台我的签约"+snailHouse.getId());
            return orderService.web_select(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("前台我的签约操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "签约添加")
    @RequestMapping("/Web_insert_pre")
    private ModelAndView Web_insert_pre(@ModelAttribute SnailOrder snailHouse, HttpSession httpSession) {
        try {
            log.info("签约添加"+snailHouse.getId());
            return orderService.web_insert_pre(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("签约添加操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "订单添加")
    @RequestMapping("/Web_insert")
    private ModelAndView Web_insert(@ModelAttribute SnailOrder snailHouse, HttpSession httpSession) {
        try {
            log.info("订单添加"+snailHouse.getId());
            return orderService.web_insert(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("订单添加操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


    @ApiOperation(value = "添加页面")
    @RequestMapping("/Admin_orderinsert")
    public ModelAndView pAdmin_insert() {
        return  new ModelAndView("/Admin_orderinsert");
    }

    @ApiOperation(value = "订单列表")
    @RequestMapping("/Admin_list")
    private ModelAndView Admin_list(@ModelAttribute SnailOrder snailUser,HttpSession httpSession) {
        try {
            log.info("订单列表");
            return orderService.admin_list(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "订单回显")
    @RequestMapping("/Admin_select")
    private ModelAndView Admin_select(@ModelAttribute SnailOrder snailUser, HttpSession httpSession) {
        try {
            log.info("订单回显");
            return orderService.admin_select(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单回显操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "订单添加")
    @RequestMapping("/Admin_insert")
    private ModelAndView Admin_insert(@ModelAttribute SnailOrder snailUser,HttpSession httpSession) {
        try {
            log.info("订单添加");
            return orderService.admin_insert(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单添加操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "订单修改")
    @RequestMapping("/Admin_update")
    private ModelAndView admin_update(@ModelAttribute SnailOrder snailUser,HttpSession httpSession) {
        try {
            log.info("订单修改");
            return orderService.admin_update(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单修改操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "订单删除")
    @RequestMapping("/Admin_delete")
    private ModelAndView Admin_delete(@ModelAttribute SnailOrder snailUser, HttpSession httpSession) {
        try {
            log.info("订单删除"+snailUser.getId()+"==");
            return orderService.admin_delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单删除操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "订单审核")
    @RequestMapping("/Admin_update/state")
    private ModelAndView admin_update_state(@ModelAttribute SnailOrder snailUser,HttpSession httpSession) {
        try {
            log.info("订单审核");
            return orderService.admin_update_state(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单审核操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

}
