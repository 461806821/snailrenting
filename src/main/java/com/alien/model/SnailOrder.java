package com.alien.model;

import java.util.Date;

public class SnailOrder {
    private Integer id;

    private Integer userId;

    private Integer houseId;

    private Integer roomId;

    private String contract;

    private Integer payState;

    private Short payMoney;

    private Short discountMoney;

    private Date liveTime;

    private Date payTime;

    private Date payValidTime;

    private Date validTime;

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

    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract == null ? null : contract.trim();
    }

    public Integer getPayState() {
        return payState;
    }

    public void setPayState(Integer payState) {
        this.payState = payState;
    }

    public Short getPayMoney() {
        return payMoney;
    }

    public void setPayMoney(Short payMoney) {
        this.payMoney = payMoney;
    }

    public Short getDiscountMoney() {
        return discountMoney;
    }

    public void setDiscountMoney(Short discountMoney) {
        this.discountMoney = discountMoney;
    }

    public Date getLiveTime() {
        return liveTime;
    }

    public void setLiveTime(Date liveTime) {
        this.liveTime = liveTime;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Date getPayValidTime() {
        return payValidTime;
    }

    public void setPayValidTime(Date payValidTime) {
        this.payValidTime = payValidTime;
    }

    public Date getValidTime() {
        return validTime;
    }

    public void setValidTime(Date validTime) {
        this.validTime = validTime;
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