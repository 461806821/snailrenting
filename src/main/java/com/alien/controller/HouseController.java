package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailCollection;
import com.alien.entity.SnailHouse;
import com.alien.entity.SnailRoom;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.service.CollectionService;
import com.alien.service.HouseService;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by alien on 2020/3/21 0021 15:56
 */
@Log4j2
@Controller
@RequestMapping("/house")
public class HouseController {

    @Autowired
    private HouseService houseService;

    @ApiOperation(value = "前台房源列表")
    @PostMapping("/Web_list")
    private ModelAndView Web_list(@ModelAttribute SnailHouseVO snailHouse, HttpSession httpSession) {
        try {
            log.info("前台房源列表"+snailHouse.toString());
            if(!snailHouse.getTypeVO().equals("null")){
                snailHouse.setType(Integer.parseInt(snailHouse.getTypeVO()));
            }
            if(!snailHouse.getBedroomVO().equals("null")){
                snailHouse.setBedroom(Integer.parseInt(snailHouse.getBedroomVO()));
            }
            if(!snailHouse.getKitchenVO().equals("null")){
                snailHouse.setKitchen(Integer.parseInt(snailHouse.getKitchenVO()));
            }
            if(!snailHouse.getLivingVO().equals("null")){
                snailHouse.setLiving(Integer.parseInt(snailHouse.getLivingVO()));

            }
            if(!snailHouse.getMaxPriceVO().equals("null")){
                snailHouse.setMaxPrice(Integer.parseInt(snailHouse.getMaxPriceVO()));
            }
            if(!snailHouse.getMinPriceVO().equals("null")){
                snailHouse.setMinPrice(Integer.parseInt(snailHouse.getMinPriceVO()));
            }

            return houseService.web_list(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("前台房源列表操作失败", e);
            return ModelAndViewResult.failed("/Web_error",null, "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "前台房源详情")
    @RequestMapping("/Web_select")
    private ModelAndView Web_select(@ModelAttribute SnailRoom snailHouse, HttpSession httpSession) {
        try {
            log.info("前台房源详情"+snailHouse.getId());
            return houseService.web_select(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("前台房源详情操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

//    @ApiOperation(value = "后台房源列表")
//    @RequestMapping("/Admin_list")
//    private ModelAndView Admin_list(@ModelAttribute SnailHouse snailHouse,HttpSession httpSession) {
//        try {
//            log.info("后台房源列表");
//            return houseService.admin_list(snailHouse,httpSession);
//        }
//        catch (Exception e) {
//            log.error("后台房源列表操作失败", e);
//            return ModelAndViewResult.failed("/Admin_error",null, "no", CodeEnum.MSG_ERROR.getMsg());
//        }
//    }
//
//    @ApiOperation(value = "房源回显")
//    @RequestMapping("/Admin_select")
//    private ModelAndView Admin_select(@ModelAttribute SnailHouse snailUser,HttpSession httpSession) {
//        try {
//            log.info("用户回显");
//            return houseService.admin_select(snailUser,httpSession);
//        }
//        catch (Exception e) {
//            log.error("用户回显操作失败", e);
//            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
//        }
//    }
//
//    @ApiOperation(value = "房源添加")
//    @RequestMapping("/Admin_insert")
//    private ModelAndView Admin_insert(@ModelAttribute SnailHouse snailUser,HttpSession httpSession) {
//        try {
//            log.info("房源添加");
//            return houseService.admin_insert(snailUser,httpSession);
//        }
//        catch (Exception e) {
//            log.error("房源添加操作失败", e);
//            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
//        }
//    }
//
//    @ApiOperation(value = "房源修改")
//    @RequestMapping("/Admin_update")
//    private ModelAndView Admin_update(@ModelAttribute SnailHouse snailUser,HttpSession httpSession) {
//        try {
//            log.info("房源修改");
//            return houseService.admin_update(snailUser,httpSession);
//        }
//        catch (Exception e) {
//            log.error("房源修改操作失败", e);
//            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
//        }
//    }
//
//    @ApiOperation(value = "房源删除")
//    @RequestMapping("/Admin_delete")
//    private ModelAndView Admin_delete(@ModelAttribute SnailHouse snailUser, HttpSession httpSession) {
//        try {
//            log.info("房源删除"+snailUser.getId()+"==");
//            return houseService.admin_delete(snailUser,httpSession);
//        }
//        catch (Exception e) {
//            log.error("房源删除操作失败", e);
//            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
//        }
//    }

}
