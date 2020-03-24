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
@Api(value = "服务")
@Log4j2
@Controller
@RequestMapping("/service")
public class serviceController {


    @ApiOperation(value = "网站服务页面")
    @RequestMapping("/Web_service")
    public ModelAndView Web_service() {
        log.info("网站服务页面");
        return  new ModelAndView("/Web_service");
    }


}
