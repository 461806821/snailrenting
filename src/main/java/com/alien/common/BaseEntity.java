package com.alien.common;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BaseEntity<T> {
    public static final Integer DEL_FLAG_NORMAL = 0;
    public static final Integer DEL_FLAG_DELETE = 1;
    public static final Integer DEL_FLAG_AUDIT = 2;

    protected Integer id;
    protected Integer createBy; // 创建者
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    protected Date createDate; // 创建日期
    protected Integer updateBy; // 更新者
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    protected Date updateDate; // 更新日期
    protected Integer delFlag; // 删除标记（0：正常；1：删除）
    protected Integer PageSize = 9;//大小
    protected Integer PageNum = 1;//页码


    public void preInsert(Integer userid){
        this.updateBy = userid;
        this.createBy = userid;
        this.updateDate = new Date();
        this.createDate = this.updateDate;
        this.delFlag = DEL_FLAG_NORMAL;
    }

    public void preUpdate(Integer userid) {
        this.setUpdateBy(userid);
        this.setUpdateDate(new Date());
    }

}
