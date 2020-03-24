package com.alien.common;

import lombok.Data;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by alien on 2020/3/20 0020 14:54
 */
@Data
public class ModelAndViewResult<T> {

    public static <T> ModelAndView succeed(String viewName,String msg,boolean success) {
        return succeedWith(viewName,null,  CodeEnum.CODE_SUCCESS.getCode(), msg,success);
    }

    public static <T> ModelAndView succeed(String viewName,T model, String msg,boolean success) {
        return succeedWith(viewName,model, CodeEnum.CODE_SUCCESS.getCode(), msg,success);
    }

    public static <T> ModelAndView succeed(String viewName,T model,boolean success) {
        return succeedWith(viewName,model, CodeEnum.CODE_SUCCESS.getCode(), "",success);
    }

    public static <T> ModelAndView succeedWith(String viewName,T data, Integer status, String msg,boolean success) {
        ModelAndView modelAndView = new ModelAndView(viewName);
        modelAndView.addObject("data",data);
        modelAndView.addObject("status",status);
        modelAndView.addObject("msg",msg);
        modelAndView.addObject("success",success);
        return modelAndView;
    }

    public static <T> ModelAndView failed(String viewName,String msg,boolean success) {
        return failedWith(viewName,null, CodeEnum.CODE_ERROR.getCode(), msg,success);
    }

    public static <T> ModelAndView failed(String viewName,T model, String msg,boolean success) {
        return failedWith(viewName,model, CodeEnum.CODE_ERROR.getCode(), msg,success);
    }
//
    public static <T> ModelAndView failedWith(String viewName,T data, Integer status, String msg,boolean success) {
        ModelAndView modelAndView = new ModelAndView(viewName);
        modelAndView.addObject("data",data);
        modelAndView.addObject("status",status);
        modelAndView.addObject("msg",msg);
        modelAndView.addObject("success",success);
        return modelAndView;
    }

    public static <T> ModelAndView succeedPage(String viewName,T model, String msg,boolean success,long total, Integer pageNum, Integer pageSize) {
        return failedWithPage(viewName,model, CodeEnum.CODE_SUCCESS.getCode(), msg,success,total,pageNum,pageSize);
    }


    public static <T> ModelAndView failedPage(String viewName,String msg,boolean success,long total,Integer pageNum, Integer pageSize) {
        return failedWithPage(viewName,null, CodeEnum.CODE_SUCCESS.getCode(), msg,success,total,pageNum,pageSize);
    }

    public static <T> ModelAndView failedPage(String viewName,T model, String msg,boolean success, long total,Integer pageNum, Integer pageSize) {
        ModelAndView modelAndView = new ModelAndView(viewName);
        modelAndView.addObject("data",model);
        modelAndView.addObject("msg",msg);
        modelAndView.addObject("success",success);
        modelAndView.addObject("total",total);
        modelAndView.addObject("pageNum",pageNum);
        modelAndView.addObject("pageSize",pageSize);
        return modelAndView;
    }

    public static <T> ModelAndView failedWithPage(String viewName,T data, Integer status, String msg,boolean success,long total,Integer pageNum,Integer pageSize) {
        ModelAndView modelAndView = new ModelAndView(viewName);
        modelAndView.addObject("data",data);
        modelAndView.addObject("status",status);
        modelAndView.addObject("msg",msg);
        modelAndView.addObject("success",success);
        modelAndView.addObject("total",total);
        modelAndView.addObject("pageNum",pageNum);
        modelAndView.addObject("pageSize",pageSize);
        return modelAndView;
    }

    public ModelAndViewResult() {
    }
}
