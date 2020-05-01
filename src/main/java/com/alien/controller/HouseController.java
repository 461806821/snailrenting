package com.alien.controller;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailMessage;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.entity.vo.SnailRoomVO;
import com.alien.service.HouseService;
import com.alien.utils.DateUtils;
import io.swagger.annotations.ApiOperation;
import lombok.extern.log4j.Log4j2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.fileupload.FileUploadException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.Date;

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
    @RequestMapping("/Web_list")
    private ModelAndView Web_list(@ModelAttribute SnailHouseVO snailHouse, HttpSession httpSession) {
        try {
            log.info("前台房源列表"+snailHouse.toString());
            return houseService.web_list(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("前台房源列表操作失败", e);
            return ModelAndViewResult.failed("/Web_error",null, "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "房源列表搜索")
    @PostMapping("/Web_list")
    private ModelAndView Web_search(@ModelAttribute SnailHouseVO snailHouse, HttpSession httpSession) {
        try {
            log.info("房源列表搜索"+snailHouse.toString());
            if(!snailHouse.getTypeVO().equals("null")){
                snailHouse.setType(Integer.parseInt(snailHouse.getTypeVO()));
            }
            if(!snailHouse.getBedroomVO().equals("null")){
                snailHouse.setBedroom(Integer.parseInt(snailHouse.getBedroomVO()));
            }
            if(!snailHouse.getBathVO().equals("null")){
                snailHouse.setBath(Integer.parseInt(snailHouse.getBathVO()));
            }
            if(!snailHouse.getMaxPriceVO().equals("null")){
                snailHouse.setMaxPrice(Long.parseLong(snailHouse.getMaxPriceVO()));
            }
            if(!snailHouse.getMinPriceVO().equals("null")){
                snailHouse.setMinPrice(Long.parseLong(snailHouse.getMinPriceVO()));
            }
            return houseService.web_list(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("房源列表搜索操作失败", e);
            return ModelAndViewResult.failed("/Web_error",null, "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "前台房源详情")
    @RequestMapping("/Web_select")
    private ModelAndView Web_select(@ModelAttribute SnailRoomVO snailHouse, HttpSession httpSession) {
        try {
            log.info("前台房源详情"+snailHouse.getId());
            return houseService.web_select(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("前台房源详情操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "房源点赞")
    @RequestMapping("/Web_praise")
    private ModelAndView Web_praise(@ModelAttribute SnailRoomVO snailUser, HttpSession httpSession) {
        try {
            log.info("房源点赞");
            return houseService.updatePraise(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房源点赞操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "添加页面")
    @RequestMapping("/Web_houseinsert")
    public ModelAndView pWeb_insert() {
        return  new ModelAndView("/Web_houseinsert");
    }

    @RequestMapping(value = "/Web_insert", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView Web_insert(HttpServletRequest request, HttpSession httpSession) {
        try{
            log.info("房源添加");
            SnailHouseVO h = new SnailHouseVO();
            h.setSnailRoomVOS(new ArrayList<>());
            MultipartHttpServletRequest params=((MultipartHttpServletRequest) request);
            h.setName(params.getParameter("house_name"));
//            h.setUserId(Integer.parseInt(params.getParameter("userId")));
            h.setAddress(params.getParameter("address"));
            h.setType(Integer.parseInt(params.getParameter("type")));
            h.setBedroom(Integer.parseInt(params.getParameter("bedroom")));
            h.setKitchen(Integer.parseInt(params.getParameter("kitchen")));
            h.setLiving(Integer.parseInt(params.getParameter("living")));
            h.setBedroom(Integer.parseInt(params.getParameter("bath")));
            h.setHousePrice(Long.valueOf(params.getParameter("house_price")));
            h.setHouseImg(saveFile(((MultipartHttpServletRequest) request).getFile("house_img"),request));
            h.setKitchenImg1(saveFile(((MultipartHttpServletRequest) request).getFile("kitchen_img1"),request));
            h.setKitchenImg2(saveFile(((MultipartHttpServletRequest) request).getFile("kitchen_img2"),request));
            h.setLivingImg1(saveFile(((MultipartHttpServletRequest) request).getFile("living_img1"),request));
            h.setLivingImg2(saveFile(((MultipartHttpServletRequest) request).getFile("living_img2"),request));
            h.setBathImg1(saveFile(((MultipartHttpServletRequest) request).getFile("bath_img1"),request));
            h.setBathImg2(saveFile(((MultipartHttpServletRequest) request).getFile("bath_img2"),request));
            h.setVrImg1(saveFile(((MultipartHttpServletRequest) request).getFile("vr_img1"),request));
            h.setVrImg2(saveFile(((MultipartHttpServletRequest) request).getFile("vr_img2"),request));
            h.setVrImg3(saveFile(((MultipartHttpServletRequest) request).getFile("vr_img3"),request));
            h.setValidTime(DateUtils.strToDate(params.getParameter("validTime")));
            h.setDesp(params.getParameter("house_desp"));
            //构造房间
            for (int i = 1; i <= h.getBedroom(); i++) {
                SnailRoomVO r = new SnailRoomVO();
                log.info(i + "room_name save");
                r.setName(params.getParameter(i + "room_name"));
                r.setPrice(Long.valueOf(params.getParameter(i+"room_price")));
                r.setSale(Long.valueOf(params.getParameter(i+"sale")));
                r.setBedroomImg1(saveFile(((MultipartHttpServletRequest) request).getFile(i+"bedroom_img1"),request));
                r.setBedroomImg2(saveFile(((MultipartHttpServletRequest) request).getFile(i+"bedroom_img2"),request));
                r.setDesp(params.getParameter(i+"room_desp"));
                h.getSnailRoomVOS().add(r);
            }
            return houseService.admin_insert(h, httpSession);
        } catch (Exception e) {
            log.error("房源添加操作失败", e);
            return ModelAndViewResult.failed("/Web_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "后台房源列表")
    @RequestMapping("/Admin_list")
    private ModelAndView Admin_list(@ModelAttribute SnailHouseVO snailHouse, HttpSession httpSession){
        try {
            log.info("后台房源列表");
            return houseService.admin_list(snailHouse,httpSession);
        }
        catch (Exception e) {
            log.error("后台房源列表操作失败", e);
            return ModelAndViewResult.failed("/Admin_error",null, "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "房源回显")
    @RequestMapping("/Admin_select")
    private ModelAndView Admin_select(@ModelAttribute SnailHouseVO snailUser, HttpSession httpSession) {
        try {
            log.info("房源回显");
            return houseService.admin_select(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房源回显操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "添加页面")
    @RequestMapping("/Admin_houseinsert")
    public ModelAndView pAdmin_insert() {
        return  new ModelAndView("/Admin_houseinsert");
    }

    @RequestMapping(value = "/Admin_insert", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView Admin_insert(HttpServletRequest request, HttpSession httpSession) {
        try{
            log.info("房源添加");
            SnailHouseVO h = new SnailHouseVO();
            h.setSnailRoomVOS(new ArrayList<>());
            MultipartHttpServletRequest params=((MultipartHttpServletRequest) request);
            h.setName(params.getParameter("house_name"));
            h.setUserId(Integer.parseInt(params.getParameter("userId")));
            h.setAddress(params.getParameter("address"));
            h.setType(Integer.parseInt(params.getParameter("type")));
            h.setBedroom(Integer.parseInt(params.getParameter("bedroom")));
            h.setKitchen(Integer.parseInt(params.getParameter("kitchen")));
            h.setLiving(Integer.parseInt(params.getParameter("living")));
            h.setBedroom(Integer.parseInt(params.getParameter("bath")));
            h.setHousePrice(Long.valueOf(params.getParameter("house_price")));
            h.setHouseImg(saveFile(((MultipartHttpServletRequest) request).getFile("house_img"),request));
            h.setKitchenImg1(saveFile(((MultipartHttpServletRequest) request).getFile("kitchen_img1"),request));
            h.setKitchenImg2(saveFile(((MultipartHttpServletRequest) request).getFile("kitchen_img2"),request));
            h.setLivingImg1(saveFile(((MultipartHttpServletRequest) request).getFile("living_img1"),request));
            h.setLivingImg2(saveFile(((MultipartHttpServletRequest) request).getFile("living_img2"),request));
            h.setBathImg1(saveFile(((MultipartHttpServletRequest) request).getFile("bath_img1"),request));
            h.setBathImg2(saveFile(((MultipartHttpServletRequest) request).getFile("bath_img2"),request));
            h.setVrImg1(saveFile(((MultipartHttpServletRequest) request).getFile("vr_img1"),request));
            h.setVrImg2(saveFile(((MultipartHttpServletRequest) request).getFile("vr_img2"),request));
            h.setVrImg3(saveFile(((MultipartHttpServletRequest) request).getFile("vr_img3"),request));
            h.setValidTime(DateUtils.strToDate(params.getParameter("validTime")));
            h.setDesp(params.getParameter("house_desp"));
            //构造房间
            for (int i = 1; i <= h.getBedroom(); i++) {
                SnailRoomVO r = new SnailRoomVO();
                log.info(i + "room_name save");
                r.setName(params.getParameter(i + "room_name"));
                r.setPrice(Long.valueOf(params.getParameter(i+"room_price")));
                r.setSale(Long.valueOf(params.getParameter(i+"sale")));
                r.setBedroomImg1(saveFile(((MultipartHttpServletRequest) request).getFile(i+"bedroom_img1"),request));
                r.setBedroomImg2(saveFile(((MultipartHttpServletRequest) request).getFile(i+"bedroom_img2"),request));
                r.setDesp(params.getParameter(i+"room_desp"));
                h.getSnailRoomVOS().add(r);
            }
            return houseService.admin_insert(h, httpSession);
        } catch (Exception e) {
            log.error("房源添加操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    String saveFile(MultipartFile file,HttpServletRequest request) throws FileUploadException, IOException {
        BufferedOutputStream stream = null;
        if (!file.isEmpty()) {
            //取得后缀
            String fileName = file.getOriginalFilename();
            fileName = fileName.substring(fileName.lastIndexOf("."));//获得后缀
            fileName = new Date().getTime() + fileName; //要存入数据库的 路径
            String path = request.getServletContext().getRealPath("/static/picture/") + fileName;//保存路径  真实路径+/+时间+/后缀.xx
            log.info(path);
            byte[] bytes = file.getBytes();
            //输入输出流
            stream = new BufferedOutputStream(new FileOutputStream(path));
            stream.write(bytes);
            stream.close();
            return fileName;
        }
        return null;
    }

    @ApiOperation(value = "房源房子修改")
    @RequestMapping(value = "/Admin_update/house", method = RequestMethod.POST)
    private ModelAndView Admin_update1(HttpServletRequest request, HttpSession httpSession) {
         try {
            log.info("房源房子修改");
            SnailHouseVO h = new SnailHouseVO();
            h.setSnailRoomVOS(new ArrayList<>());
            MultipartHttpServletRequest params=((MultipartHttpServletRequest) request);
            h.setId(Integer.parseInt(params.getParameter("id")));
            h.setName(params.getParameter("house_name"));
            h.setAddress(params.getParameter("address"));
            String type =params.getParameter("type");
            h.setType(Integer.valueOf(type));
            String bedroom =params.getParameter("bedroom");
            h.setBedroom(Integer.valueOf(bedroom));
             String kitchen =params.getParameter("kitchen");
            h.setKitchen(Integer.valueOf(kitchen));
             String living =params.getParameter("living");
            h.setLiving(Integer.valueOf(living));
             String bath =params.getParameter("bath");
            h.setBedroom(Integer.valueOf(bath));
            h.setHousePrice(Long.valueOf(params.getParameter("house_price")));
            String house_img =saveFile(((MultipartHttpServletRequest) request).getFile("house_img"),request);
            if (house_img!=null)
                h.setHouseImg(house_img);
            String kitchen_img1 =saveFile(((MultipartHttpServletRequest) request).getFile("kitchen_img1"),request);
            if (kitchen_img1!=null)
                h.setKitchenImg1(kitchen_img1);
            String kitchen_img2 =saveFile(((MultipartHttpServletRequest) request).getFile("kitchen_img2"),request);
            if (kitchen_img2!=null)
                h.setKitchenImg2(kitchen_img2);
            String living_img1 =saveFile(((MultipartHttpServletRequest) request).getFile("living_img1"),request);
            if (living_img1!=null)
                h.setLivingImg1(living_img1);
            String living_img2 =saveFile(((MultipartHttpServletRequest) request).getFile("living_img2"),request);
            if (living_img2!=null)
                h.setLivingImg2(living_img2);
            String bath_img1 =saveFile(((MultipartHttpServletRequest) request).getFile("bath_img1"),request);
            if (bath_img1!=null)
                h.setBathImg1(bath_img1);
            String bath_img2 =saveFile(((MultipartHttpServletRequest) request).getFile("bath_img2"),request);
            if (bath_img2!=null)
                h.setBathImg2(bath_img2);
            String vr_img1 =saveFile(((MultipartHttpServletRequest) request).getFile("vr_img1"),request);
            if (vr_img1!=null)
                h.setVrImg1(vr_img1);
            String vr_img2 =saveFile(((MultipartHttpServletRequest) request).getFile("vr_img2"),request);
            if (vr_img2!=null)
                h.setVrImg2(vr_img2);
            String vr_img3 =saveFile(((MultipartHttpServletRequest) request).getFile("vr_img3"),request);
            if (vr_img3!=null)
                h.setVrImg3(vr_img3);
//            h.setValidTime(DateUtils.strToDate(params.getParameter("validTime")));
            h.setDesp(params.getParameter("house_desp"));
            //构造房间
            for (int i = 1; i <= h.getBedroom(); i++) {
                SnailRoomVO r = new SnailRoomVO();
                r.setId(Integer.parseInt(params.getParameter(i+"id")));
                r.setName(params.getParameter(i + "room_name"));
                r.setPrice(Long.valueOf(params.getParameter(i+"room_price")));
                r.setSale(Long.valueOf(params.getParameter(i+"sale")));
                String bedroom_img1 =saveFile(((MultipartHttpServletRequest) request).getFile(i+"bedroom_img1"),request);
                if (bedroom_img1!=null)
                    r.setBedroomImg1(bedroom_img1);
                String bedroom_img2 =saveFile(((MultipartHttpServletRequest) request).getFile(i+"bedroom_img2"),request);
                if (bedroom_img2!=null)
                    r.setBedroomImg2(bedroom_img2);
                r.setDesp(params.getParameter(i+"room_desp"));
                h.getSnailRoomVOS().add(r);
            }
            return houseService.admin_update_house(h,httpSession);
        }
        catch (Exception e) {
            log.error("房源房子修改操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "房源房间修改")
    @RequestMapping("/Admin_update/room")
    private ModelAndView admin_update_room(@ModelAttribute SnailRoomVO snailUser,HttpSession httpSession) {
        try {
            log.info("房源房间修改");
            return houseService.admin_update_room(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房源房间修改操作失败", e);
            return ModelAndViewResult.failed("/Admin_error", "no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "房源删除")
    @RequestMapping("/Admin_delete")
    private ModelAndView Admin_delete(@ModelAttribute SnailHouseVO snailUser, HttpSession httpSession) {
        try {
            log.info("房源删除"+snailUser.getId()+"==");
            return houseService.admin_delete(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房源删除操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }

    @ApiOperation(value = "房间状态修改")
    @RequestMapping("/Admin_update/state")
    private ModelAndView Admin_update_state(@ModelAttribute SnailRoomVO snailUser, HttpSession httpSession) {
        try {
            log.info("房间状态修改"+snailUser.getId()+"==");
            return houseService.admin_updateState(snailUser,httpSession);
        }
        catch (Exception e) {
            log.error("房间状态修改操作失败", e);
            return ModelAndViewResult.failed("/Admin_error","no", CodeEnum.MSG_ERROR.getMsg());
        }
    }
}
