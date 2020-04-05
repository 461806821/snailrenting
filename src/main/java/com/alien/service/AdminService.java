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
                sessionadmin.setRole(a.getRole());
                switch(a.getRole())
                {
                    case 0:
                        sessionadmin.setRolename("超级管理员");
                        break;
                    case 1:
                        sessionadmin.setRolename("管理员");
                        break;
                    case 2:
                        sessionadmin.setRolename("管家");
                        break;
                    case 3:
                        sessionadmin.setRolename("审核员");
                        break;
                    case 4:
                        sessionadmin.setRolename("维修");
                        break;
                    default:
                        sessionadmin.setRolename("null");
                        break;
                }
                sessionadmin.setUsername(a.getUsername());
                httpSession.setAttribute("sessionadmin", sessionadmin);
                return new ModelAndView("redirect:/index/Admin_index");
            }
            modelAndView.addObject("msg", "密码不正确！");
            return modelAndView;
        }
        modelAndView.addObject("msg", "用户名不存在！");
        return modelAndView;
    }

    public ModelAndView logout(SnailAdmin snailAdmin, HttpSession httpSession){
        httpSession.removeAttribute("sessionadmin");
        return new ModelAndView("redirect:/admin/Admin_login");
    }

}
