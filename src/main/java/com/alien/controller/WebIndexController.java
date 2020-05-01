package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.vo.SessionUser;
import com.alien.service.BannerService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/21 0021 15:09
 */
@Api(value = "网站首页")
@Log4j2
@Controller
@RequestMapping("/index")
public class WebIndexController {

    @Autowired
    private BannerService bannerService;

    @ApiOperation(value = "网站首页页面")
    @RequestMapping("/Web_index")
    public ModelAndView Web_index(HttpSession httpSession) {
        try {
            log.info("网站首页页面");
            return bannerService.web_list(httpSession);
        }
        catch (Exception e) {
            log.error("网站首页操作失败", e);
            return ModelAndViewResult.failed("/Web_error",null, "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "VR页面")
    @RequestMapping("/Web_vr")
    private ModelAndView pWeb_vr(HttpSession httpSession) {
        log.info("VR页面");
        return  new ModelAndView("/Web_vr");
    }
}
