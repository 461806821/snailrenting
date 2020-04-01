package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailOrder;
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
    
    @ApiOperation(value = "订单列表")
    @RequestMapping("/Admin_list")
    private ModelAndView Admin_list(@ModelAttribute SnailOrder snailUser,HttpSession httpSession) {
        try {
            log.info("订单列表");
            return orderService.admin_list(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_userlist", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


}
