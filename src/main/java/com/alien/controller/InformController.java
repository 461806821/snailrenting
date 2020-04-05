package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailInform;
import com.alien.entity.SnailOrder;
import com.alien.service.InformService;
import com.alien.service.OrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/22 0018 20:53
 */
@Api(value = "通知管理")
@Log4j2
@Controller
@RequestMapping("/inform")
public class InformController {

    @Autowired
    private InformService orderService;

    @ApiOperation(value = "前台我的通知")
    @RequestMapping("/Web_select")
    private ModelAndView Web_list(@ModelAttribute SnailInform snailHouse, HttpSession httpSession) {
        try {
            log.info("前台我的签约"+snailHouse.getId());
            return orderService.web_list(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("前台我的签约操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "通知已读")
    @RequestMapping("/Web_update")
    private ModelAndView Web_update(@ModelAttribute SnailInform snailUser, HttpSession httpSession) {
        try {
            log.info("订单删除"+snailUser.getId()+"==");
            return orderService.updateState(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单删除操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "通知删除")
    @RequestMapping("/Web_delete")
    private ModelAndView Web_delete(@ModelAttribute SnailInform snailUser, HttpSession httpSession) {
        try {
            log.info("订单删除"+snailUser.getId()+"==");
            return orderService.web_delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单删除操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


    @ApiOperation(value = "添加页面")
    @RequestMapping("/Admin_informinsert")
    public ModelAndView pAdmin_insert() {
        return  new ModelAndView("/Admin_informinsert");
    }

    @ApiOperation(value = "通知列表")
    @RequestMapping("/Admin_list")
    private ModelAndView Admin_list(@ModelAttribute SnailInform snailUser,HttpSession httpSession) {
        try {
            log.info("订单列表");
            return orderService.admin_list(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


    @ApiOperation(value = "通知添加")
    @RequestMapping("/Admin_insert")
    private ModelAndView Admin_insert(@ModelAttribute SnailInform snailUser,HttpSession httpSession) {
        try {
            log.info("订单添加");
            return orderService.admin_insert(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("订单添加操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


}
