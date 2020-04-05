package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailHouse;
import com.alien.entity.SnailRoom;
import com.alien.entity.SnailUser;
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
        return ModelAndViewResult.succeedPage("/Web_houselist",list, null, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView web_select(SnailRoomVO snailRoom, HttpSession httpSession){
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
        SnailHouseVO snailHouse=new SnailHouseVO();
        snailHouse.setUserId(sessionuser.getId());
        snailHouse.preInsert(sessionuser.getId());
        houseMapper.insertHouse(snailHouse);
        //构造room类
        List<SnailRoomVO> snailRooms =new ArrayList<>();
        for(int i=0;i<snailHouse.getBedroom();i++){
            SnailRoomVO snailRoom =new SnailRoomVO();
            /////
            snailRoom.preInsert(sessionuser.getId());
            snailRooms.add(snailRoom);
        }
        houseMapper.insertRooms(snailRooms);

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
        /////
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
        SnailHouse u=houseMapper.selectRoom(snailHouseVO);
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
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
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
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

//        return admin_list(snailHouseVO,httpSession);
    }

}
