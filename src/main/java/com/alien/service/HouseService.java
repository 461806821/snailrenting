package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailHouse;
import com.alien.entity.SnailRoom;
import com.alien.entity.SnailUser;
import com.alien.entity.vo.SessionUser;
import com.alien.entity.vo.SnailHouseVO;
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
        return ModelAndViewResult.succeedPage("/Web_houselist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView web_select(SnailRoom snailRoom, HttpSession httpSession){
        SnailHouse h=houseMapper.selectHouse(snailRoom);
        log.info(h.toString());
        log.info(h.getSnailRooms().size()+h.getSnailRooms().toString());
        if(!h.getSnailRooms().isEmpty()){
            for (SnailRoom r:h.getSnailRooms()){
                if(r.getId() == snailRoom.getId()){
                    h.setSnailRoom(r);
                }
            }
        }

//        List<SnailRoom> snailRooms = houseMapper.selectRooms(h);
//        for (SnailRoom r:snailRooms){
//            if(r.getId() == snailRoom.getId()){
//                h.setSnailRoom(r);
//                snailRooms.remove(r);
//            }
//        }
//        h.setSnailRooms(snailRooms);

//        ModelAndView modelAndView =new ModelAndView();
//        SnailHouseVO h=new SnailHouseVO();
//        h.setId(1);
//        h.setAddress("地址");
//        List<SnailRoomVO> snailRoomVOS=new ArrayList<>();
//        SnailRoomVO r1=new SnailRoomVO();
//        SnailRoomVO r2=new SnailRoomVO();
//        r1.setHouseId(1);
//        r2.setHouseId(1);
//        r1.setId(1);
//        r2.setId(2);
//        r1.setSale(Integer.toUnsignedLong(1991));
//        r1.setSale(Integer.toUnsignedLong(1992));
//        snailRoomVOS.add(r1);
//        snailRoomVOS.add(r2);
//        h.setSnailRoomVOs(snailRoomVOS);
//        modelAndView.addObject("house",h);
//        modelAndView.addObject("rooms",snailRooms);
//        modelAndView.setViewName("/Web_detail");
//        return modelAndView;
        return ModelAndViewResult.succeed("/Web_detail",h,CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_insert(SnailHouseVO snailHouseVO, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        //构造house类
        SnailHouse snailHouse=new SnailHouse();
        snailHouse.setUserId(sessionuser.getId());
        snailHouse.preInsert(sessionuser.getId());
        houseMapper.insertHouse(snailHouse);
        //构造room类
        List<SnailRoom> snailRooms =new ArrayList<>();
        SnailRoom snailRoom =new SnailRoom();
//        for (){
//
//        }
        snailRoom.preInsert(sessionuser.getId());
        houseMapper.insertRoom(snailRoom);
        SnailHouse h=houseMapper.selectHouse(snailRoom);
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


//    public ModelAndView admin_list(SnailHouseVO snailUser, HttpSession httpSession){
//        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
//        if(sessionadmin == null){
//            return new ModelAndView("redirect:/admin/Admin_login");
//        }
//        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
//        List<SnailHouseVO> list= houseMapper.selectHouse(snailUser);
//        PageInfo<SnailHouseVO> pageInfo = new PageInfo<>(list);
//        return ModelAndViewResult.succeedPage("/Admin_houselist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
//    }
//
//    public ModelAndView admin_select(SnailHouse snailUser, HttpSession httpSession){
//        SnailHouseVO u=houseMapper.selectHouse(snailUser);
//        return ModelAndViewResult.succeed("/Admin_houseupdate",u, null, CodeEnum.MSG_SUCCES.getMsg());
//    }
//
//    @Transactional(readOnly = false)
//    public ModelAndView admin_insert(SnailHouse snailUser, HttpSession httpSession){
//        snailUser.preInsert(101);
//        houseMapper.insert(snailUser);
//        SnailHouseVO u=houseMapper.selectHouse(snailUser);
//        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
//    }
//
//    @Transactional(readOnly = false)
//    public ModelAndView admin_update(SnailHouse snailUser, HttpSession httpSession){
//        snailUser.preUpdate(101);
//        houseMapper.update(snailUser);
//        SnailHouseVO u=houseMapper.selectHouse(snailUser);
//        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
//    }
//
//    @Transactional(readOnly = false)
//    public ModelAndView admin_delete(SnailHouse snailUser, HttpSession httpSession){
//        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
//        if(sessionadmin == null){
//            return new ModelAndView("redirect:/admin/Admin_login");
//        }
//        snailUser.preUpdate(sessionadmin.getId());
//        houseMapper.delete(snailUser);
//
//        return admin_list(snailUser,httpSession);
//    }

}
