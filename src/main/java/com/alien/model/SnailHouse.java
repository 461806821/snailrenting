package com.alien.model;

import java.util.Date;

public class SnailHouse {
    private Integer id;

    private Integer userId;

    private Integer locationId;

    private Integer type;

    private String name;

    private String address;

    private Long housePrice;

    private String houseImg;

    private Integer bedroom;

    private Integer bath;

    private String bathImg1;

    private String bathImg2;

    private Integer kitchen;

    private String kitchenImg1;

    private String kitchenImg2;

    private Integer living;

    private String livingImg1;

    private String livingImg2;

    private Date validTime;

    private String desp;

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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getLocationId() {
        return locationId;
    }

    public void setLocationId(Integer locationId) {
        this.locationId = locationId;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public Long getHousePrice() {
        return housePrice;
    }

    public void setHousePrice(Long housePrice) {
        this.housePrice = housePrice;
    }

    public String getHouseImg() {
        return houseImg;
    }

    public void setHouseImg(String houseImg) {
        this.houseImg = houseImg == null ? null : houseImg.trim();
    }

    public Integer getBedroom() {
        return bedroom;
    }

    public void setBedroom(Integer bedroom) {
        this.bedroom = bedroom;
    }

    public Integer getBath() {
        return bath;
    }

    public void setBath(Integer bath) {
        this.bath = bath;
    }

    public String getBathImg1() {
        return bathImg1;
    }

    public void setBathImg1(String bathImg1) {
        this.bathImg1 = bathImg1 == null ? null : bathImg1.trim();
    }

    public String getBathImg2() {
        return bathImg2;
    }

    public void setBathImg2(String bathImg2) {
        this.bathImg2 = bathImg2 == null ? null : bathImg2.trim();
    }

    public Integer getKitchen() {
        return kitchen;
    }

    public void setKitchen(Integer kitchen) {
        this.kitchen = kitchen;
    }

    public String getKitchenImg1() {
        return kitchenImg1;
    }

    public void setKitchenImg1(String kitchenImg1) {
        this.kitchenImg1 = kitchenImg1 == null ? null : kitchenImg1.trim();
    }

    public String getKitchenImg2() {
        return kitchenImg2;
    }

    public void setKitchenImg2(String kitchenImg2) {
        this.kitchenImg2 = kitchenImg2 == null ? null : kitchenImg2.trim();
    }

    public Integer getLiving() {
        return living;
    }

    public void setLiving(Integer living) {
        this.living = living;
    }

    public String getLivingImg1() {
        return livingImg1;
    }

    public void setLivingImg1(String livingImg1) {
        this.livingImg1 = livingImg1 == null ? null : livingImg1.trim();
    }

    public String getLivingImg2() {
        return livingImg2;
    }

    public void setLivingImg2(String livingImg2) {
        this.livingImg2 = livingImg2 == null ? null : livingImg2.trim();
    }

    public Date getValidTime() {
        return validTime;
    }

    public void setValidTime(Date validTime) {
        this.validTime = validTime;
    }

    public String getDesp() {
        return desp;
    }

    public void setDesp(String desp) {
        this.desp = desp == null ? null : desp.trim();
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