package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailMessage;
import com.alien.entity.SnailReply;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SessionUser;
import com.alien.mapper.SnailMessageMapper;
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
public class MessageService {

    @Autowired
    private SnailMessageMapper userMapper;

    public ModelAndView list(SnailMessage snailUser){
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailMessage> list= userMapper.list(snailUser);
        PageInfo<SnailMessage> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Web_messagelist",list, null, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView insert(SnailMessage snailUser, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.setUserId(sessionuser.getId());
        snailUser.preInsert(sessionuser.getId());
        userMapper.insertMessage(snailUser);

        snailUser.setPageSize(5);
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailMessage> list= userMapper.list(snailUser);
        PageInfo<SnailMessage> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Web_messagelist",list, "发布消息成功！", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView reply(SnailReply snailUser, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.setUserId(sessionuser.getId());
        snailUser.preInsert(sessionuser.getId());
        userMapper.insertReply(snailUser);

        SnailMessage m =new SnailMessage();
        m.setPageSize(5);
        PageHelper.startPage(m.getPageNum(), m.getPageSize());
        List<SnailMessage> list= userMapper.list(m);
        PageInfo<SnailMessage> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Web_messagelist",list, "回复成功！", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView updatePraise(SnailMessage snailUser, HttpSession httpSession){
        snailUser.setPageSize(5);
        userMapper.updatePraise(snailUser);
        return list(snailUser);
    }

    public ModelAndView Admin_list(SnailMessage snailUser){
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailMessage> list= userMapper.list(snailUser);
        PageInfo<SnailMessage> pageInfo = new PageInfo<>(list);
        for (SnailMessage m:list) {
            m.setReplySize(m.getSnailReplys().size());
        }
        return ModelAndViewResult.succeedPage("/Admin_messagelist",list, null, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView delete(SnailMessage snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        userMapper.delete(snailUser);

        return Admin_list(snailUser);
    }


}
