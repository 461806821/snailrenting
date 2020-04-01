package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailBusiness;
import com.alien.entity.SnailHouse;
import com.alien.entity.SnailOrder;
import com.alien.entity.SnailUser;
import com.alien.entity.vo.SessionUser;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.service.BusinessService;
import com.alien.service.HouseService;
import com.alien.service.OrderService;
import com.alien.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/21 0021 15:09
 */
@Api(value = "服务")
@Log4j2
@Controller
@RequestMapping("/service")
public class ServiceController {

    @Autowired
    private UserService userService;
    @Autowired
    private BusinessService businessService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private HouseService houseService;

    @ApiOperation(value = "网站服务页面")
    @RequestMapping("/Web_service")
    private ModelAndView pWeb_service(HttpSession httpSession) {
        log.info("网站服务页面");
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        return  new ModelAndView("/Web_service");
    }

    @ApiOperation(value = "个人中心页面")
    @RequestMapping("/Web_usercenter")
    private ModelAndView pWeb_usercenter(@ModelAttribute SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("个人中心页面");
            return userService.web_select(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("个人中心页面操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "修改个人中心接口")
    @PostMapping("/Web_usercenter/update")
    private ModelAndView Web_usercenter(@ModelAttribute SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("修改个人中心接口"+snailUser.toString());
            return userService.web_update(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("修改个人中心操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "租户/房东认证页面")
    @RequestMapping("/Web_certificate")
    private ModelAndView pWeb_certificate(SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("房东认证页面");
            return userService.web_select_identity(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房东认证页面操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "租户/房东认证接口")
    @RequestMapping("/Web_certificate/update")
    private ModelAndView Web_certificate(@ModelAttribute SnailUser snailUser, HttpSession httpSession) {
        try {
            log.info("租户/房东认证接口");
            SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
            if(sessionuser == null){
                return new ModelAndView("redirect:/user/Web_login");
            }
            return userService.web_update_identity(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("租户/房东认证操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "发布房源页面")
    @RequestMapping("/Web_houseinsert")
    private ModelAndView pWeb_houseinsert(HttpSession httpSession) {
        try {
            log.info("发布房源页面");
            return houseService.web_insert_check(httpSession);
        }
        catch (Exception e) {
            log.error("的业务列表操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "发布房源接口")
    @PostMapping("/Web_houseinsert/insert")
    private ModelAndView Web_houseinsert(@ModelAttribute SnailHouseVO snailHouse, HttpSession httpSession) {
        try {
            log.info("发布房源接口");
            return houseService.web_insert(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("布房源操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "我的业务列表页面")
    @RequestMapping("/Web_businesslist")
    private ModelAndView Web_businesslist(@ModelAttribute SnailBusiness snailBusiness,HttpSession httpSession) {
        try {
            log.info("我的业务列表页面");
            return businessService.web_list(snailBusiness,httpSession);
        }
        catch (Exception e) {
            log.error("我的业务列表操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "我的签约页面")
    @RequestMapping("/Web_order")
    private ModelAndView Web_order(@ModelAttribute SnailOrder snailOrder,HttpSession httpSession) {
        try {
            log.info("我的签约页面");
            return orderService.web_select(snailOrder,httpSession);
        }
        catch (Exception e) {
            log.error("我的签约操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "售后服务页面")
    @RequestMapping("/Web_aftersale")
    private ModelAndView pWeb_aftersale( HttpSession httpSession) {
        try {
            log.info("售后服务页面");
            return businessService.web_insert_check(httpSession);
        }
        catch (Exception e) {
            log.error("售后服务页面操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "添加售后服务接口")
    @PostMapping("/Web_aftersale/insert")
    private ModelAndView Web_aftersale(@ModelAttribute SnailBusiness snailBusiness, HttpSession httpSession) {
        try {
            log.info("添加售后服务接口"+snailBusiness.toString());
            return businessService.web_insert(snailBusiness,httpSession);
        }
        catch (Exception e) {
            log.error("添加售后服务操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

}
