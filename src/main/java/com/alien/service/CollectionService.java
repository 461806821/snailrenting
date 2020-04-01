package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailCollection;
import com.alien.entity.SnailUser;
import com.alien.mapper.SnailCollectionMapper;
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
    private SnailCollectionMapper userMapper;

    public ModelAndView list(SnailCollection snailUser){
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailCollection> list= userMapper.list(snailUser);
        PageInfo<SnailCollection> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_collectionlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView insert(SnailCollection snailUser){
        snailUser.preInsert(101);
        userMapper.insert(snailUser);
        SnailCollection u=userMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_houselist",u, "收藏成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView delete(SnailCollection snailUser, HttpSession httpSession){
//        SnailUser user=(SnailUser) httpSession.getAttribute("user");
//        snailUser.preUpdate(user.getId());
        snailUser.preUpdate(101);
        userMapper.delete(snailUser);
        return list(snailUser);
    }

}
