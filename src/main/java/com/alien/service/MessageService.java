package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailInform;
import com.alien.entity.SnailMessage;
import com.alien.entity.vo.SessionUser;
import com.alien.mapper.SnailMessageMapper;
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
        userMapper.insert(snailUser);

        return ModelAndViewResult.succeed("/Web_messageinsert","添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView updatePrise(SnailMessage snailUser, HttpSession httpSession){
        userMapper.updatePrise(snailUser);
        return list(snailUser);
    }

    @Transactional(readOnly = false)
    public ModelAndView delete(SnailMessage snailUser, HttpSession httpSession){
        SnailAdmin admin=(SnailAdmin) httpSession.getAttribute("admin");
        snailUser.preUpdate(admin.getId());
        userMapper.delete(snailUser);

        return list(snailUser);
    }


}
