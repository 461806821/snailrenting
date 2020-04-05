package com.alien.task;

import com.alien.entity.SnailBusiness;
import com.alien.entity.SnailOrder;
import com.alien.service.BusinessService;
import com.alien.service.OrderService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Log4j2
@Configuration
@EnableScheduling
public class InformTask<main> {

    @Autowired
    private OrderService orderService;
    @Autowired
    private BusinessService businessService;

    /**
     * 判断签约和到期提醒定时Task每天凌晨执行一次
     */
    @Scheduled(cron = "00 0 0 * * ?")
    public void giveTasks() throws ParseException {
        //1.获取所有签约信息
        log.info(new Date());
        List<SnailOrder> list = orderService.list();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        //判断有效期
        for(SnailOrder o :list){
            Date payValidTime = o.getPayValidTime();
            Date validTime = o.getValidTime();
            Date date = new Date();
            // 现在时间-截止日期时间
            long payValidTimes = (date.getTime() - payValidTime.getTime())/(24*60*60*1000);
            Integer payValidDay = Integer.parseInt(payValidTimes + "");
            //总天数
            long validTimes = (date.getTime() - validTime.getTime())/(24*60*60*1000);
            Integer validDay = Integer.parseInt(validTimes + "");
            //签约到期
            if(validDay == 0){
                orderService.delete(o);
                //构造业务信息，插入数据库
                SnailBusiness business =new SnailBusiness();

            }else {
                //支付到期
                if(payValidDay == 0){
                    orderService.updatePayState(o);
                    //构造业务信息，插入数据库
                }
            }
        }
    }



}
