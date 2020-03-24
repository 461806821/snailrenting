package com.alien.common;

/**
 * 返回值
 */
public enum CodeEnum {

    CODE_SUCCESS(200),
    CODE_ERROR(500),
    MSG_SUCCES(true),
    MSG_ERROR(false),
    ;
    private Integer code;
    private Boolean msg;

    CodeEnum(Boolean msg) {
        this.msg = msg;
    }
    CodeEnum(Integer code){
        this.code = code;
    }
    public Integer getCode() {
        return code;
    }

    public Boolean getMsg() {
        return msg;
    }

}
