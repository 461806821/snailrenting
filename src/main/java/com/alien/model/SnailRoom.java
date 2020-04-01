package com.alien.model;

import java.util.Date;

public class SnailRoom {
    private Integer id;

    private Integer houseId;

    private String name;

    private Long price;

    private Long sale;

    private String bedroomImg1;

    private String bedroomImg2;

    private String desp;

    private Integer state;

    private Long prasie;

    private Integer createBy;

    private Integer updateBy;

    private Date createDate;

    private Date updateDate;

    private Boolean delFlag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Long getSale() {
        return sale;
    }

    public void setSale(Long sale) {
        this.sale = sale;
    }

    public String getBedroomImg1() {
        return bedroomImg1;
    }

    public void setBedroomImg1(String bedroomImg1) {
        this.bedroomImg1 = bedroomImg1 == null ? null : bedroomImg1.trim();
    }

    public String getBedroomImg2() {
        return bedroomImg2;
    }

    public void setBedroomImg2(String bedroomImg2) {
        this.bedroomImg2 = bedroomImg2 == null ? null : bedroomImg2.trim();
    }

    public String getDesp() {
        return desp;
    }

    public void setDesp(String desp) {
        this.desp = desp == null ? null : desp.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Long getPrasie() {
        return prasie;
    }

    public void setPrasie(Long prasie) {
        this.prasie = prasie;
    }

    public Integer getCreateBy() {
        return createBy;
    }

    public void setCreateBy(Integer createBy) {
        this.createBy = createBy;
    }

    public Integer getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(Integer updateBy) {
        this.updateBy = updateBy;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Boolean getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(Boolean delFlag) {
        this.delFlag = delFlag;
    }
}