package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.*;
import com.alien.entity.vo.SessionUser;
import com.alien.entity.vo.SnailHouseVO;
import com.alien.entity.vo.SnailRoomVO;
import com.alien.mapper.SnailCollectionMapper;
import com.alien.mapper.SnailHouseMapper;
import com.alien.utils.UuidUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by alien on 2020/3/21 0021 17:34
 */
@Log4j2
@Service
public class CollectionService {

    @Autowired
    private SnailCollectionMapper collectionMapper;
    @Autowired
    private SnailHouseMapper houseMapper;

    public ModelAndView list(SnailCollection snailUser){
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailRoom> list= collectionMapper.list(snailUser);
        PageInfo<SnailRoom> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Web_collection",list, null, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView insert(SnailCollection snailUser,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.setUserId(sessionuser.getId());
        SnailRoomVO snailRoom =new SnailRoomVO();
        snailRoom.setId(snailUser.getRoomId());
        SnailHouse h=houseMapper.selectHouse(snailRoom);
        if(!h.getSnailRooms().isEmpty()){
            for (SnailRoom r:h.getSnailRooms()){
                if(r.getId() == snailRoom.getId()){
                    h.setSnailRoom(r);
                }
            }
        }
        if(collectionMapper.count(snailUser)>0)
            return ModelAndViewResult.succeed("/Web_detail",h,"该房源已在收藏夹！",CodeEnum.MSG_ERROR.getMsg());
        snailUser.preInsert(sessionuser.getId());
        collectionMapper.insert(snailUser);
        return ModelAndViewResult.succeed("/Web_detail",h,"收藏成功！",CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView delete(SnailCollection snailUser, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        };
        snailUser.preUpdate(sessionuser.getId());
        collectionMapper.delete(snailUser);
        return list(snailUser);
    }

}
