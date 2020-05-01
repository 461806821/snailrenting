package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailBanner;
import com.alien.entity.SnailHouse;
import com.alien.entity.SnailLocation;
import com.alien.entity.SnailRoom;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.mapper.SnailBannerMapper;
import com.alien.mapper.SnailHouseMapper;
import com.alien.mapper.SnailLocationMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:34
 */
@Log4j2
@Service
public class statisticsService {

    @Autowired
    private SnailBannerMapper bannerMapper;
    @Autowired
    private SnailLocationMapper locationMapper;
    @Autowired
    private SnailHouseMapper houseMapper;
    @Autowired
    private HouseService houseService;

    public ModelAndView web_list(HttpSession httpSession){
        List<SnailLocation> location =locationMapper.list();
        List<SnailRoom> houses =bannerMapper.getBannerHouses();
        List<SnailRoom> salehouse =new ArrayList<>();
        List<SnailRoom> commandhouse =new ArrayList<>();
        if(!houses.isEmpty()){
            for (SnailRoom h:houses) {
                if(h.getBannerType() == 1){//优惠

                    salehouse.add(h);
                }
                if(h.getBannerType() == 2){//推荐
                    commandhouse.add(h);
                }
            }
        }
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.setViewName("/Web_index");
        modelAndView.addObject("locations",location);
        modelAndView.addObject("salehouse",salehouse);
        modelAndView.addObject("commandhouse",commandhouse);
        return modelAndView;
    }

}
