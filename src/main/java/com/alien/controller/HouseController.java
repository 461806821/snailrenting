package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailHouse;
import com.alien.service.HouseService;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by alien on 2020/3/21 0021 15:56
 */
@Log4j2
@Controller
@RequestMapping("/house")
public class HouseController {

    @Autowired
    private HouseService houseService;

    @ApiOperation(value = "房源列表")
    @RequestMapping("/Admin_list")
    private ModelAndView Admin_list(@ModelAttribute SnailHouse snailHouse) {
        try {
            log.info("房源列表");
            return houseService.list(snailHouse);
        }
        catch (Exception e) {
            log.error("房源列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_list",null, "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }
}
