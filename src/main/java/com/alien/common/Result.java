package com.alien.common;

import lombok.Data;

@Data
public class Result<T> {

    private T data;
    private Integer status;
    private String msg;
    private boolean success;

    private long total;
    private Integer pageNum;
    private Integer pageSize;


    public static <T> Result<T> succeed(String msg,boolean success) {
        return succeedWith(null,  CodeEnum.CODE_SUCCESS.getCode(), msg,success);
    }

    public static <T> Result<T> succeed(T model, String msg,boolean success) {
        return succeedWith(model, CodeEnum.CODE_SUCCESS.getCode(), msg,success);
    }

    public static <T> Result<T> succeed(T model,boolean success) {
        return succeedWith(model, CodeEnum.CODE_SUCCESS.getCode(), "",success);
    }

    public static <T> Result<T> succeedWith(T data, Integer status, String msg,boolean success) {
        return new Result<>(data, status, msg,success);
    }

    public static <T> Result<T> failed(String msg,boolean success) {
        return failedWith(null, CodeEnum.CODE_ERROR.getCode(), msg,success);
    }

    public static <T> Result<T> failed(T model, String msg,boolean success) {
        return failedWith(model, CodeEnum.CODE_ERROR.getCode(), msg,success);
    }

    public static <T> Result<T> failedWith(T data, Integer status, String msg,boolean success) {
        return new Result<>(data, status, msg,success);
    }

    public static <T> Result<T> succeedPage(String msg,boolean success,long total, Integer pageNum, Integer pageSize) {
        return failedWithPage(null, CodeEnum.CODE_SUCCESS.getCode(), msg,success,total,pageNum,pageSize);
    }

    public static <T> Result<T> succeedPage(T model, String msg,boolean success,long total, Integer pageNum, Integer pageSize) {
        return failedWithPage(model, CodeEnum.CODE_SUCCESS.getCode(), msg,success,total,pageNum,pageSize);
    }

    public static <T> Result<T> succeedPage(T model,boolean success,long total, Integer pageNum, Integer pageSize) {
        return failedWithPage(model, CodeEnum.CODE_SUCCESS.getCode(), "",success,total,pageNum,pageSize);
    }

    public static <T> Result<T> succeedWithPage(T data, Integer status, String msg,boolean success,long total,Integer pageNum, Integer pageSize) {
        return new Result<>(data, status, msg,success,total,pageNum,pageSize);
    }

    public static <T> Result<T> failedPage(String msg,boolean success,long total,Integer pageNum, Integer pageSize) {
        return failedWithPage(null, CodeEnum.CODE_SUCCESS.getCode(), msg,success,total,pageNum,pageSize);
    }

    public static <T> Result<T> failedPage(T model, String msg,boolean success, long total,Integer pageNum, Integer pageSize) {
        return failedWithPage(model, CodeEnum.CODE_ERROR.getCode(), msg,success,total,pageNum,pageSize);
    }

    public static <T> Result<T> failedWithPage(T data, Integer status, String msg,boolean success,long total,Integer pageNum,Integer pageSize) {
        return new Result<>(data, status, msg,success,total,pageNum,pageSize);
    }

    public Result(T data, Integer status, String msg, boolean success) {
        this.data = data;
        this.status = status;
        this.msg = msg;
        this.success = success;
    }

    public Result(T data, Integer status, String msg, boolean success, long total, Integer pageNum, Integer pageSize) {
        this.data = data;
        this.status = status;
        this.msg = msg;
        this.success = success;
        this.total = total;
        this.pageNum = pageNum;
        this.pageSize = pageSize;
    }

    public Result(T data, Integer status, String msg, boolean success, long total) {
        this.data = data;
        this.status = status;
        this.msg = msg;
        this.success = success;
        this.total = total;
    }

    public Result(Integer status, String msg, boolean success) {
        this.status = status;
        this.msg = msg;
        this.success = success;
    }


    public Result() {
    }
}