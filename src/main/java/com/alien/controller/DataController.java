package com.alien.controller;

import com.alien.entity.SnailBusiness;
import com.alien.entity.SnailCollection;
import com.alien.entity.SnailOrder;
import com.alien.entity.SnailUser;
import com.alien.service.*;
import com.alien.utils.DayUtils;
import com.alien.utils.UuidUtils;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by alien on 2020/3/22 0018 20:53
 */
@Log4j2
@Controller
@RequestMapping("/data")
public class DataController {

    @Autowired
    private BusinessService businessService;
    @Autowired
    private UserService userService;
    @Autowired
    private HouseService houseService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private CollectionService collectionService;

    @ApiOperation(value = "数据统计页面")
    @RequestMapping("/Admin_statistics")
    public ModelAndView pAdmin_statistics(HttpSession httpSession) {
        log.info("数据统计页面");
        ModelAndView modelAndView = new ModelAndView("/Admin_statistics");
        /**
         * 用户量&用户登录量 用户登陆 次数+1 用户表记录
         */
        List<SnailUser> ulist =userService.list(new SnailUser());
        Integer uzong =ulist.size();
        Integer uloginnum = 0;
        for (int i=0;i<ulist.size();i++){
            uloginnum=uloginnum+ulist.get(i).getLoginNum();
        }
        modelAndView.addObject("uzong", uzong);
        modelAndView.addObject("uloginnum", uloginnum);
        /**
         * 签约量
         */
        Long ozong =orderService.count(new SnailOrder());
        modelAndView.addObject("ozong", ozong);
        /**
         * 收藏量
         */
        Long czong =collectionService.count(new SnailCollection());
        modelAndView.addObject("czong", czong);
        /**
         * 业务量
         */
        List<SnailBusiness> b=businessService.list(new SnailBusiness());
        Integer bzong=b.size();
        Integer daijiejue=0;
        Integer chulizhong=0;
        Integer yijiejue=0;
        for (int i=0;i<b.size();i++){//状态（0待解决，1处理中，2已解决）
            if(b.get(i).getState()==0)
                daijiejue++;
            if(b.get(i).getState()==1)
                chulizhong++;
            if(b.get(i).getState()==2)
                yijiejue++;
        }
        //计算完成率
        String brate = UuidUtils.calculateRate(yijiejue, bzong);
        modelAndView.addObject("bzong", bzong);
        modelAndView.addObject("brate", brate);
        modelAndView.addObject("daijiejue", daijiejue);
        modelAndView.addObject("chulizhong", chulizhong);
        modelAndView.addObject("yijiejue", yijiejue);
        return modelAndView;
    }

    @ApiOperation(value = "数据分析页面")
    @RequestMapping("/Admin_predict")
    public ModelAndView pAdmin_predict() {
        log.info("数据分析页面");
        return new ModelAndView("/Admin_predict");
    }



}
