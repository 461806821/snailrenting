package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailBanner;
import com.alien.entity.SnailLocation;
import com.alien.entity.SnailRoom;
import com.alien.entity.vo.SessionAdmin;
import com.alien.mapper.SnailBannerMapper;
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
public class BannerService {

    @Autowired
    private SnailBannerMapper bannerMapper;
    @Autowired
    private SnailLocationMapper locationMapper;

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

    public ModelAndView admin_list(SnailBanner snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailBanner> list= bannerMapper.list(snailUser);
        PageInfo<SnailBanner> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_houselist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_insert(SnailBanner snailUser, HttpSession httpSession){
        //salehouse max 3,commandhouse max 4
        snailUser.preInsert(101);
        bannerMapper.insert(snailUser);
        SnailBanner u=bannerMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_delete(SnailBanner snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        bannerMapper.delete(snailUser);

        return admin_list(snailUser,httpSession);
    }

}
