package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailMessage;
import com.alien.entity.SnailOrder;
import com.alien.service.MessageService;
import com.alien.service.OrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.jboss.logging.Messages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/22 0018 20:53
 */
@Api(value = "消息管理")
@Log4j2
@Controller
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageService messageService;

    @ApiOperation(value = "前台消息列表")
    @RequestMapping("/Web_list")
    private ModelAndView Web_list(@ModelAttribute SnailMessage snailHouse) {
        try {
            log.info("前台消息列表"+snailHouse.getId());
            return messageService.list(snailHouse);
        }
        catch (Exception e) {
            log.error("前台消息列表操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "消息添加")
    @RequestMapping("/Web_insert")
    private ModelAndView Web_insert(@ModelAttribute SnailMessage snailHouse, HttpSession httpSession) {
        try {
            log.info("消息添加"+snailHouse.getId());
            return messageService.insert(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("消息添加操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "消息点赞")
    @RequestMapping("/Web_update")
    private ModelAndView Web_update(@ModelAttribute SnailMessage snailUser,HttpSession httpSession) {
        try {
            log.info("消息点赞");
            return messageService.updatePrise(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("消息点赞操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "消息删除")
    @RequestMapping("/Web_delete")
    private ModelAndView Web_delete(@ModelAttribute SnailMessage snailUser, HttpSession httpSession) {
        try {
            log.info("消息删除"+snailUser.getId()+"==");
            return messageService.delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("消息删除操作失败", e);
            return ModelAndViewResult.failed("/Web_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

}
