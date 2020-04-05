package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailInform;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SessionUser;
import com.alien.mapper.SnailInformMapper;
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
public class InformService {

    @Autowired
    private SnailInformMapper userMapper;

    public ModelAndView web_list(SnailInform snailUser, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.setUserId(sessionuser.getId());
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailInform> list= userMapper.list(snailUser);
        PageInfo<SnailInform> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_informlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView updateState(SnailInform snailUser, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.preUpdate(sessionuser.getId());
        userMapper.updatePushState(snailUser);

        return ModelAndViewResult.succeed("/Admin_userupdate","修改成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_delete(SnailInform snailUser, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.preUpdate(sessionuser.getId());
        userMapper.delete(snailUser);
        return web_list(snailUser,httpSession);
    }

    public ModelAndView admin_list(SnailInform snailUser, HttpSession httpSession){
        SessionAdmin adminsession=(SessionAdmin) httpSession.getAttribute("adminsession");
        if(adminsession == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailInform> list= userMapper.list(snailUser);
        PageInfo<SnailInform> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_informlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_insert(SnailInform snailUser, HttpSession httpSession){
        SessionAdmin adminsession=(SessionAdmin) httpSession.getAttribute("adminsession");
        if(adminsession == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preInsert(adminsession.getId());
        userMapper.insert(snailUser);
        return ModelAndViewResult.succeed("/Admin_informinsert","添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    /**
     *自动进行通知发送状态更新
     */
    @Transactional(readOnly = false)
    public void updatePushState(SnailInform snailUser) {
        snailUser.preUpdate(0);//0系统
        userMapper.updatePushState(snailUser);
    }

}
