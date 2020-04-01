package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailBusiness;
import com.alien.entity.SnailHouse;
import com.alien.service.BusinessService;
import com.alien.service.HouseService;
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
@RequestMapping("/business")
public class BusinessController {

    @Autowired
    private BusinessService businessService;


    @ApiOperation(value = "业务添加")
    @RequestMapping("/Admin_insert")
    private ModelAndView Admin_insert(@ModelAttribute SnailBusiness snailUser,HttpSession httpSession) {
        try {
            log.info("业务添加");
            return businessService.admin_insert(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房源添加操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "业务修改")
    @RequestMapping("/Admin_update")
    private ModelAndView Admin_update(@ModelAttribute SnailBusiness snailUser,HttpSession httpSession) {
        try {
            log.info("业务修改");
            return businessService.admin_update(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("业务修改操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "业务取消")
    @RequestMapping("/Web_delete")
    private ModelAndView Admin_delete(@ModelAttribute SnailBusiness snailUser, HttpSession httpSession) {
        try {
            log.info("业务取消"+"=="+snailUser.getId());
            return businessService.web_delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("业务取消操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

}
