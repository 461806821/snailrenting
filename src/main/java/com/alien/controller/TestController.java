package com.alien.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Auther: dongbao
 * @Date: 2018/9/3 10:25
 * @Description:
 */
@Controller
@RequestMapping("/Test")
public class TestController {

    //http://localhost:8081/index
    @RequestMapping("/index")
    public ModelAndView  index(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView = new ModelAndView("/index");//设置对应JSP的模板文件
        modelAndView.addObject("name", "alien");

        System.out.println("index");
        return modelAndView;
    }

}
