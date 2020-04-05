package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailBanner;
import com.alien.entity.SnailBusiness;
import com.alien.service.BannerService;
import com.alien.service.BusinessService;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/21 0021 15:56
 */
@Log4j2
@Controller
@RequestMapping("/banner")
public class BannerController {

    @Autowired
    private BannerService bannerService;

    @ApiOperation(value = "广告列表")
    @RequestMapping("/Admin_list")
    private ModelAndView Admin_list(@ModelAttribute SnailBanner snailUser, HttpSession httpSession) {
        try {
            log.info("广告列表");
            return bannerService.admin_list(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("广告列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "房源添加到广告")
    @RequestMapping("/Admin_insert")
    private ModelAndView Admin_insert(@ModelAttribute SnailBanner snailUser,HttpSession httpSession) {
        try {
            log.info("房源添加到广告");
            return bannerService.admin_insert(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房源添加到广告操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "广告移除")
    @RequestMapping("/Admin_delete")
    private ModelAndView Admin_delete(@ModelAttribute SnailBanner snailUser, HttpSession httpSession) {
        try {
            log.info("广告移除"+"=="+snailUser.getRoomId());
            return bannerService.admin_delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("广告移除操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

}
