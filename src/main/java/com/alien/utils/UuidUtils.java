package com.alien.utils;


import java.text.NumberFormat;
import java.util.Date;
import java.util.UUID;

public class UuidUtils {

    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static Integer getUUIDInOrderId() {
        Integer orderId = UUID.randomUUID().toString().hashCode();
        orderId = orderId < 0 ? -orderId : orderId; //String.hashCode() 值会为空
        return orderId;
    }

    /**
     * 计算百分比
     * @param num1
     * @param num2
     */
    public static String calculateRate(int num1, int num2){
        String result = "0";
        // 创建一个数值格式化对象
        NumberFormat numberFormat = NumberFormat.getInstance();
        // 设置精确到小数点后2位
        numberFormat.setMaximumFractionDigits(2);
        //分母不为0
        if(num2 != 0) {
            result = numberFormat.format((float) num1 / (float) num2 * 100);
        }
        return result;
    }

    /**
     * 判断时间
     */
    public static int compareDate(Date time,int day)
    {
        if(time!=null) {
            long time1 = time.getTime();
            long time2 = new Date().getTime();
            //将Date转换成毫秒,1天=24×3600×1000=86400000毫秒
            int d = (int) ((time1 - time2) / 86400000);
            if (d == day || d < 0) {
                return day;
            } else {
                return -1;
            }
        }
        return -1;
    }

}