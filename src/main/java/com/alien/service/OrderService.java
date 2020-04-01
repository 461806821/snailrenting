package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailHouse;
import com.alien.entity.SnailOrder;
import com.alien.entity.SnailUser;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SessionUser;
import com.alien.mapper.SnailOrderMapper;
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
public class OrderService {

    @Autowired
    private SnailOrderMapper orderMapper;

    public ModelAndView web_select(SnailOrder snailOrder,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailOrder.setUserId(sessionuser.getId());
        SnailOrder u=orderMapper.select(snailOrder);
        return ModelAndViewResult.succeed("/Web_orderselect",u, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_insert(SnailOrder snailOrder){
        snailOrder.preInsert(101);
        orderMapper.insert(snailOrder);
        SnailOrder u=orderMapper.select(snailOrder);
        return ModelAndViewResult.succeed("/Admin_userupdate",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_delete(SnailOrder snailOrder, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailOrder.setUserId(sessionuser.getId());
        snailOrder.preUpdate(sessionuser.getId());
        orderMapper.delete(snailOrder);
        return web_select(snailOrder,httpSession);
    }

    public ModelAndView admin_list(SnailOrder snailUser, HttpSession httpSession){
        SessionAdmin adminsession=(SessionAdmin) httpSession.getAttribute("adminsession");
        if(adminsession == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailOrder> list= orderMapper.list(snailUser);
        PageInfo<SnailOrder> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_houselist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView admin_select(SnailOrder snailUser, HttpSession httpSession){
        SnailOrder u=orderMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, null, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_insert(SnailOrder snailUser, HttpSession httpSession){
        snailUser.preInsert(101);
        orderMapper.insert(snailUser);
        SnailOrder u=orderMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update(SnailOrder snailUser, HttpSession httpSession){
        snailUser.preUpdate(101);
        orderMapper.update(snailUser);
        SnailOrder u=orderMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_houseupdate",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_delete(SnailOrder snailUser, HttpSession httpSession){
        SnailAdmin admin=(SnailAdmin) httpSession.getAttribute("admin");
        snailUser.preUpdate(admin.getId());
        orderMapper.delete(snailUser);

        return admin_list(snailUser,httpSession);
    }

}
