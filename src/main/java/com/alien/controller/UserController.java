package com.alien.controller;

import com.alibaba.fastjson.JSONObject;
import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailUser;
import com.alien.entity.vo.SessionUser;
import com.alien.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/18 0018 17:53
 */
@Api(value = "用户管理")
@Log4j2
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @ApiOperation(value = "用户登录页面")
    @RequestMapping("/Web_login")
    public ModelAndView pWeb_login() {
        log.info("用户登录页面");
        ModelAndView modelAndView = new ModelAndView("/Web_login");//设置对应JSP的模板文件
        modelAndView.addObject("checkword", "ALIEN");
        return modelAndView;
    }

    @ApiOperation(value = "用户登录接口")
    @PostMapping(value = "/login")
    public ModelAndView userLogin(@ModelAttribute SnailUser snailUser, HttpSession httpSession){
        log.info("用户登录接口"+ snailUser.getUsername());
        try {
            return userService.login(snailUser,httpSession);
        } catch (Exception e) {
            log.error("用户登录操作失败", e);
            return ModelAndViewResult.failed("/Web_login", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "注册接口")
    @RequestMapping("/register")
    private ModelAndView register(@ModelAttribute SnailUser snailUser) {
        try {
            log.info("注册接口"+snailUser.getUsername());
            return userService.web_insert(snailUser);
        }
        catch (Exception e) {
            log.error("注册操作失败", e);
            return ModelAndViewResult.failed("/Web_login", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "用户添加页面")
    @RequestMapping("/Admin_userinsert")
    public ModelAndView pAdmin_insert() {
        return  new ModelAndView("/Admin_userinsert");
    }

    @ApiOperation(value = "用户列表")
    @RequestMapping("/Admin_list")
    private ModelAndView Admin_list(@ModelAttribute SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("用户列表");
            return userService.admin_list(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("用户列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_userlist", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


    @ApiOperation(value = "用户回显")
    @RequestMapping("/Admin_select")
    private ModelAndView Admin_select(@ModelAttribute SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("用户回显");
            return userService.admin_select(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("用户回显操作失败", e);
            return ModelAndViewResult.failed("/Admin_userlist", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "用户添加")
    @RequestMapping("/Admin_insert")
    private ModelAndView Admin_insert(@ModelAttribute SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("用户添加");
            return userService.admin_insert(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("用户添加操作失败", e);
            return ModelAndViewResult.failed("/Admin_userlist", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "用户修改")
    @RequestMapping("/Admin_update")
    private ModelAndView Admin_update(@ModelAttribute SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("用户修改");
            return userService.admin_update(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("用户修改操作失败", e);
            return ModelAndViewResult.failed("/Admin_userlist", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "用户删除")
    @RequestMapping("/Admin_delete")
    private ModelAndView Admin_delete(@ModelAttribute SnailUser snailUser,HttpSession httpSession) {
        try {
            log.info("用户删除"+snailUser.getId()+"==");
            return userService.admin_delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("用户删除操作失败", e);
            return ModelAndViewResult.failed("/Admin_userlist","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }


}
