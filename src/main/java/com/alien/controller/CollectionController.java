package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailCollection;
import com.alien.service.CollectionService;
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
@Api(value = "收藏管理")
@Log4j2
@Controller
@RequestMapping("/collection")
public class CollectionController {

    @Autowired
    private CollectionService collectionService;

    @ApiOperation(value = "我的收藏列表")
    @RequestMapping("/Web_list")
    private ModelAndView Web_list(@ModelAttribute SnailCollection snailUser,HttpSession httpSession) {
        try {
            log.info("我的收藏列表");
            return collectionService.list(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("我的收藏列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "收藏添加")
    @RequestMapping("/Web_insert")
    private ModelAndView Web_insert(@ModelAttribute SnailCollection snailUser,HttpSession httpSession) {
        try {
            log.info("收藏添加");
            return collectionService.insert(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("收藏添加操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "收藏删除")
    @RequestMapping("/Web_delete")
    private ModelAndView Web_delete(@ModelAttribute SnailCollection snailUser,HttpSession httpSession) {
        try {
            log.info("收藏删除"+snailUser.getId()+"==");
            return collectionService.delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("收藏删除操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


}
