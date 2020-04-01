package com.alien.utils;

import lombok.extern.log4j.Log4j2;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;


/**
 * Created by alien on 2020/3/22 0031 20:40
 */
@Log4j2
public class DateUtils {

    /**
     * 获取昨天日期
     *
     * @param date
     * @return
     */
    public static String getYesterDay(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat(
                "yyyy-MM-dd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60;

        date.setTime(beforeTime * 1000);

        return formatter.format(date);

    }

    /**
     * 获取昨天日期(返回数值)
     *
     * @param date
     * @return num
     */
    public static Integer getYesterDayNum(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat("yyyyMMdd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60;

        date.setTime(beforeTime * 1000);

        return Integer.parseInt(formatter.format(date));

    }

    /**
     * 获取一周前的日期(当前日期往前推7天)
     *
     * @param date
     * @return
     */
    public static String getWeekdayBeforeDate(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat(
                "yyyy-MM-dd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60 * 7;

        date.setTime(beforeTime * 1000);

        return formatter.format(date);

    }

    /**
     * 获取一周前的日期(当前日期往前推7天)(返回数值)
     *
     * @param date
     * @return
     */
    public static Integer getWeekdayBeforeDateNum(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat("yyyyMMdd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60 * 7;

        date.setTime(beforeTime * 1000);

        return Integer.parseInt(formatter.format(date));

    }

    /**
     * 获取一月前的日期(当前日期往前推30天)
     *
     * @param date
     * @return
     */
    public static String getMonthBeforeDate(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat(
                "yyyy-MM-dd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60 * 30;

        date.setTime(beforeTime * 1000);

        return formatter.format(date);

    }

    /**
     * 获取一月前的日期(当前日期往前推30天)(返回数值)
     *
     * @param date
     * @return
     */
    public static Integer getMonthBeforeDateNum(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat("yyyyMMdd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60 * 30;

        date.setTime(beforeTime * 1000);

        return Integer.parseInt(formatter.format(date));

    }

    /**
     * 获取三月前的日期(当前日期往前推90天)
     *
     * @param date
     * @return
     */
    public static String get3MonthBeforeDate(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat(
                "yyyy-MM-dd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60 * 30 * 3;

        date.setTime(beforeTime * 1000);

        String d = formatter.format(date);
        return d;
    }

    /**
     * 获取三月前的日期(当前日期往前推30天)(返回数值)
     *
     * @param date
     * @return
     */
    public static Integer get3MonthBeforeDateNum(Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat("yyyyMMdd");

        long beforeTime = (date.getTime() / 1000) - 24 * 60 * 60 * 30 * 3;

        date.setTime(beforeTime * 1000);

        return Integer.parseInt(formatter.format(date));

    }

    /**
     * 获取一年后的日期
     *
     * @return
     */
    public static String getNextYear(int chooseYear, Date date) {

        java.text.Format formatter = new java.text.SimpleDateFormat(
                "yyyy-MM-dd");

        long beforeTime = (date.getTime() / 1000) + 60 * 60 * 24 * 365
                * chooseYear;

        date.setTime(beforeTime * 1000);

        return formatter.format(date);
    }

    /**
     * 日期转换成字符串
     *
     * @param date
     * @return
     */
    public static String convertDateToStr(Date date) {
        java.text.Format formatter = new java.text.SimpleDateFormat(
                "yyyy-MM-dd");
        return formatter.format(date);

    }

    /**
     * 日期转换成字符串 yyyy-MM-dd HHmmss
     *
     * @param date
     * @return
     */
    public static String convertTimeToStr(Date date) {
        java.text.Format formatter = new java.text.SimpleDateFormat(
                "yyyy-MM-dd HH:mm:ss");
        return formatter.format(date);

    }

    /**
     * 将日期转为数值
     *
     * @param date
     * @return
     */
    public static Integer convertDateToNum(Date date) {
        java.text.Format formatter = new java.text.SimpleDateFormat("yyyyMMdd");
        return Integer.parseInt(formatter.format(date));
    }
    /**
     * 将字符串日期转为数值
     *
     * @param date
     * @return
     */
    public static Integer convertStrToNum(String date) {

        if (date.contains("-")) {
            date = date.replace("-", "");
        } else if (date.contains(".")) {
            date = date.replace(".", "");
        } else if (date.contains("/")) {
            date = date.replace("/", "");
        }

        return Integer.parseInt(date);
    }

    /**
     * 时间转换器 第一个参数 要转化的数据类型 --- java.util.Date 第二个参数 要转化的数据 --- "2010-12-12"
     *
     */
    public static Date convertStrTODate( String str,Class<Date> type,String datePattern) {

        if (str == null) {
            return null;
        } else {
            if (type == java.util.Date.class) {
                if (str instanceof String) {
                    try {
                        SimpleDateFormat sdf = new SimpleDateFormat(datePattern);
                        return sdf.parse(str);
                    } catch (ParseException e) {
                        throw new RuntimeException("您输入的数据格式不对");
                    }
                } else {
                    throw new RuntimeException("您要转化的数据输入不是String类型");
                }
            } else {
                throw new RuntimeException("您要转化的数据类型不对");
            }
        }
    }

    /**
     * 根据生日计算年龄
     *
     * @param birthDay
     * @return
     * @throws Exception
     */
    public static int getAge(Date birthDay) throws Exception {
        Calendar cal = Calendar.getInstance();

        if (cal.before(birthDay)) {
            throw new IllegalArgumentException(
                    "The birthDay is before Now.It's unbelievable!");
        }
        int yearNow = cal.get(Calendar.YEAR);
        int monthNow = cal.get(Calendar.MONTH);
        int dayOfMonthNow = cal.get(Calendar.DAY_OF_MONTH);
        cal.setTime(birthDay);

        int yearBirth = cal.get(Calendar.YEAR);
        int monthBirth = cal.get(Calendar.MONTH);
        int dayOfMonthBirth = cal.get(Calendar.DAY_OF_MONTH);

        int age = yearNow - yearBirth;

        if (monthNow <= monthBirth) {
            if (monthNow == monthBirth) {
                // monthNow==monthBirth
                if (dayOfMonthNow < dayOfMonthBirth) {
                    age--;
                } else {
                    // do nothing
                }
            } else {
                // monthNow>monthBirth
                age--;
            }
        } else {
            // monthNow<monthBirth
            // donothing
        }

        return age;
    }
    ///////////////////////////////////////根据时间段获取时间的集合//////////////////////////////////////////////////////////////////
    public static List<String> getDateListBydates(String s1,String s2,String format) throws ParseException{
        List<String>list=new ArrayList<String>();
        //String s1 = "2012-02-01";
        //String s2 = "2012-04-04";
        SimpleDateFormat sdf = new SimpleDateFormat(format);
        Date   begin=sdf.parse(s1);
        Date   end=sdf.parse(s2);
        double   between=(end.getTime()-begin.getTime())/1000;//除以1000是为了转换成秒
        double  day=between/(24*3600);
        for(int i = 0;i<=day;i++){
            Calendar cd = Calendar.getInstance();
            cd.setTime(sdf.parse(s1));
            cd.add(Calendar.DATE, i);//增加一天
            //cd.add(Calendar.MONTH, n);//增加一个月
            log.info(sdf.format(cd.getTime()));
            list.add(sdf.format(cd.getTime()));
        }
        return list;
    }
    //获取指定年月的总天数
    public static int getLastDay(int year, int month) {
        int day = 1;
        Calendar cal = Calendar.getInstance();
        cal.set(year,month - 1,day);
        int last = cal.getActualMaximum(Calendar.DATE);
        System.out.println(last);
        return last;
    }
    //获取指定年月的日期
    @SuppressWarnings("unchecked")
    public static List<String> getDatesByMonth(int year, int month){
        List<String> list=new ArrayList();
        String yyyy=year+"";
        String mm=month+"";
        String dd="01";
        if(month<10){
            mm="0"+month;
        }
        int num=getLastDay(year, month);
        for(int i=1;i<=num;i++){
            if(i<10){
                dd="0"+i;
            }else{
                dd=i+"";
            }
            list.add(yyyy+"-"+mm+"-"+dd);
            System.out.println(yyyy+"-"+mm+"-"+dd);
        }
        return list;
    }
    /**
     *
     * @param datestr 解析字符串  如2014-04-1716:38:57
     * @param sourceDateformat 源日期格式 如yyyy-MM-ddHH:mm:ss
     * @param targetDateformat 要转换的日期格式 如(yyyy-MM-dd HH:mm:ss)
     * @return
     */
    public static String strTOdateTOStr(String datestr,String sourceDateformat,String targetDateformat){
//        String str="2014-04-1716:38:57";
        try {
            SimpleDateFormat sourceFormat = new SimpleDateFormat(sourceDateformat);
            SimpleDateFormat targetFormat = new SimpleDateFormat(targetDateformat);
            return targetFormat.format(sourceFormat.parse(datestr));
        } catch (Exception e) {
            log.info("strTOdateTOStr:"+e);
        }
        return null;

    }

}