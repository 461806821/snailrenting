package com.alien.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by alien on 2020/3/21 0021 15:09
 */
@Api(value = "管理员首页")
@Log4j2
@Controller
@RequestMapping("/index")
public class AdminIndexController {

    @ApiOperation(value = "管理员首页页面")
    @RequestMapping("/Admin_index")
    public ModelAndView Admin_index() {
        log.info("管理员首页页面");
        ModelAndView modelAndView = new ModelAndView("/Admin_index");//设置对应JSP的模板文件
        modelAndView.addObject("checkword", "ALIEN");
        return modelAndView;
    }



}
