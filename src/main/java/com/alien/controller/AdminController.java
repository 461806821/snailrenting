package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.service.AdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/19 0019 11:41
 */
@Api(value = "管理员管理")
@Log4j2
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @ApiOperation(value = "管理员登录页面")
    @RequestMapping("/Admin_login")
    public ModelAndView pAdmin_login() {
        log.info("管理员登录页面");
        return  new ModelAndView("/Admin_error");//设置对应JSP的模板文件
    }

    @ApiOperation(value = "管理员登录接口")
    @PostMapping(value = "/login")
    private ModelAndView Admin_login(@ModelAttribute SnailAdmin snailAdmin, HttpSession httpSession){
        log.info("管理员登录接口"+ snailAdmin.getUsername());
        try {
                return adminService.login(snailAdmin,httpSession);
        } catch (Exception e) {
            log.error("管理员登录操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


}
