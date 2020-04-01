package com.alien.service;

import com.alien.entity.SnailAdmin;
import com.alien.entity.vo.SessionAdmin;
import com.alien.mapper.SnailAdminMapper;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


/**
 * Created by alien on 2020/3/19 0019 13:30
 */
@Log4j2
@Service
public class AdminService {

    @Autowired
    private SnailAdminMapper adminMapper;

    /**
     * 登陆接口
     * @param snailAdmin
     * @return
     */
    public ModelAndView login(SnailAdmin snailAdmin, HttpSession httpSession){
        ModelAndView modelAndView = new ModelAndView("/Admin_login");
        SnailAdmin a= adminMapper.select(snailAdmin);
        if(a!=null){
            if(snailAdmin.getPassword().equals(a.getPassword())){
                SessionAdmin sessionadmin =new SessionAdmin();
                sessionadmin.setId(a.getId());
                sessionadmin.setUsername(a.getUsername());
                httpSession.setAttribute("sessionuser", sessionadmin);
                return new ModelAndView("redirect:/index/Admin_index");
            }
            modelAndView.addObject("msg", "密码不正确！");
            return modelAndView;
        }
        modelAndView.addObject("msg", "用户名不存在！");
        return modelAndView;
    }


}
