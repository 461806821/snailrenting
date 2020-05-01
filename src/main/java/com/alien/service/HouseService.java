package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.*;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SessionUser;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.entity.vo.SnailRoomVO;
import com.alien.mapper.SnailHouseMapper;
import com.alien.mapper.SnailUserMapper;
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
public class HouseService {

    @Autowired
    private SnailHouseMapper houseMapper;
    @Autowired
    private SnailUserMapper userMapper;

    public ModelAndView web_list(SnailHouseVO snailHouseVO, HttpSession httpSession){
        PageHelper.startPage(snailHouseVO.getPageNum(), snailHouseVO.getPageSize());
        List<SnailRoom> list= houseMapper.roomList(snailHouseVO);
        PageInfo<SnailRoom> pageInfo = new PageInfo<>(list);
//        List<SnailHouse> list= houseMapper.webhouseList(snailHouseVO);
//        PageInfo<SnailHouse> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Web_houselist",list, null, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView web_select(SnailRoomVO snailRoom, HttpSession httpSession){
        SnailHouse h=houseMapper.selectHouse(snailRoom);
        if(!h.getSnailRooms().isEmpty()){
            for (SnailRoom r:h.getSnailRooms()){
                if(r.getId() == snailRoom.getId()){
                    h.setSnailRoom(r);
                }
            }
        }
        return ModelAndViewResult.succeed("/Web_detail",h,CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView updatePraise(SnailRoomVO snailUser, HttpSession httpSession){
        houseMapper.updatePraise(snailUser);
        return web_select(snailUser,httpSession);
    }

    @Transactional(readOnly = false)
    public ModelAndView web_insert(SnailHouseVO snailHouseVO, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailHouseVO.setUserId(sessionuser.getId());
        snailHouseVO.preInsert(sessionuser.getId());
        houseMapper.insertHouse(snailHouseVO);
        for (int i=0;i<snailHouseVO.getBedroom();i++){
            snailHouseVO.getSnailRoomVOS().get(i).setHouseId(snailHouseVO.getId());
            snailHouseVO.getSnailRoomVOS().get(i).preInsert(sessionuser.getId());
            houseMapper.insertRoom(snailHouseVO.getSnailRoomVOS().get(i));
        }

        SnailHouse h=houseMapper.selectRoom(snailHouseVO);
        return ModelAndViewResult.succeed("/Web_houseinsert",h, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    public ModelAndView web_insert_check(HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        //房东身份验证
        SnailUser u =new SnailUser();
        u.setId(sessionuser.getId());
        u.setUsername(sessionuser.getUsername());
//        if(userMapper.select(u).getCertificate() != 2){//certificate:2房东身份
//            return ModelAndViewResult.succeed("/Web_certificate","请认证房东身份后发布房源信息！", CodeEnum.MSG_SUCCES.getMsg());
//        }
        return ModelAndViewResult.succeed("/Web_houseinsert",null, CodeEnum.MSG_SUCCES.getMsg());
    }


    public ModelAndView admin_list(SnailHouseVO snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailHouse> list= houseMapper.houseList(snailUser);
        PageInfo<SnailHouse> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_houselist",list, null, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView admin_select(SnailHouseVO snailUser, HttpSession httpSession){
        SnailHouse u=houseMapper.selectRoom(snailUser);
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, null, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_insert(SnailHouseVO snailHouseVO, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailHouseVO.preInsert(sessionadmin.getId());
        houseMapper.insertHouse(snailHouseVO);
        for (int i=0;i<snailHouseVO.getBedroom();i++){
            snailHouseVO.getSnailRoomVOS().get(i).setHouseId(snailHouseVO.getId());
            snailHouseVO.getSnailRoomVOS().get(i).preInsert(sessionadmin.getId());
            houseMapper.insertRoom(snailHouseVO.getSnailRoomVOS().get(i));
        }

        SnailHouse h=houseMapper.selectRoom(snailHouseVO);

        return ModelAndViewResult.succeed("/Admin_houseupdate",h, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update_house(SnailHouseVO snailHouseVO, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailHouseVO.preUpdate(sessionadmin.getId());
        houseMapper.updateHouse(snailHouseVO);
        for (int i=0;i<snailHouseVO.getBedroom();i++){
            snailHouseVO.getSnailRoomVOS().get(i).preUpdate(sessionadmin.getId());
            houseMapper.updateRoom(snailHouseVO.getSnailRoomVOS().get(i));
        }

        SnailHouse h=houseMapper.selectRoom(snailHouseVO);

        return ModelAndViewResult.succeed("/Admin_houseupdate",h, "修改房源成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update_room(SnailRoomVO snailRoomVO, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailRoomVO.preUpdate(sessionadmin.getId());
        houseMapper.updateRoom(snailRoomVO);
        SnailHouseVO snailHouseVO =new SnailHouseVO();
        snailHouseVO.setId(snailRoomVO.getHouseId());
        SnailHouse u=houseMapper.selectRoom(snailHouseVO);
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "修改房屋成功！", CodeEnum.MSG_SUCCES.getMsg());
    }


    @Transactional(readOnly = false)
    public ModelAndView admin_delete(SnailHouseVO snailHouseVO, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailHouseVO.preUpdate(sessionadmin.getId());
        houseMapper.delete(snailHouseVO);

        return admin_list(snailHouseVO,httpSession);
    }


    @Transactional(readOnly = false)
    public ModelAndView admin_updateState(SnailRoomVO snailRoomVO, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailRoomVO.preUpdate(sessionadmin.getId());
        houseMapper.updateState(snailRoomVO);

        SnailHouseVO snailHouseVO =new SnailHouseVO();
        snailHouseVO.setId(snailRoomVO.getHouseId());
        snailHouseVO.setPageNum(snailRoomVO.getPageNum());
        snailHouseVO.setPageSize(snailRoomVO.getPageSize());
        PageHelper.startPage(snailRoomVO.getPageNum(), snailRoomVO.getPageSize());
        List<SnailHouse> list= houseMapper.houseList(snailHouseVO);
        PageInfo<SnailHouse> pageInfo = new PageInfo<>(list);
        String msg;
        switch(snailRoomVO.getState())//状态（0出租中，1已租，2停用，3审核中，4装修，5准备签约）
        {
            case 0:
                msg="出租中";
                break;
            case 1:
                msg="已租";
                break;
            case 2:
                msg="停用";
                break;
            case 3:
                msg="审核中";
                break;
            case 4:
                msg="装修";
            break;
            case 5:
                msg="准备签约";
                break;
            default:
                msg=null;
                break;
        }
        return ModelAndViewResult.succeedPage("/Admin_houselist",list, msg="成功修改房屋当前状态为"+msg, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

}
