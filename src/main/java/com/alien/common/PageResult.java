package com.alien.common;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;

/**
 * 分页查询结果封装
 */
public class PageResult<T> implements Serializable {

    private Long total;
    private List<T> data;
    private HashMap map;

    public PageResult() {
    }

    public PageResult(Long total, List<T> data) {
        this.total = total;
        this.data = data;
    }

    public PageResult(Long total, HashMap map) {
        this.total = total;
        this.map = map;
    }

    public PageResult(Long total, List<T> data, HashMap map) {
        this.total = total;
        this.data = data;
        this.map = map;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
