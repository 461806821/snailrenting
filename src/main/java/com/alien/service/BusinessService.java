package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailBusiness;
import com.alien.entity.SnailHouse;
import com.alien.entity.SnailUser;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SessionUser;
import com.alien.mapper.SnailBusinessMapper;
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
public class BusinessService {

    @Autowired
    private SnailBusinessMapper businessMapper;

    public ModelAndView web_list(SnailBusiness snailBusiness,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        PageHelper.startPage(snailBusiness.getPageNum(), snailBusiness.getPageSize());
        snailBusiness.setUserId(sessionuser.getId());
        List<SnailBusiness> list= businessMapper.list(snailBusiness);
        PageInfo<SnailBusiness> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Web_businesslist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_insert(SnailBusiness snailBusiness,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailBusiness.setUserId(sessionuser.getId());
        snailBusiness.preInsert(sessionuser.getId());
        businessMapper.insert(snailBusiness);
        return ModelAndViewResult.succeed("/Web_aftersale", "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    public ModelAndView web_insert_check(HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        //租户身份验证
        SnailUser u =new SnailUser();
        u.setId(sessionuser.getId());
        u.setUsername(sessionuser.getUsername());
//        if(userMapper.select(u).getCertificate() != 1){//certificate:1租户身份
//            return ModelAndViewResult.succeed("/Web_certificate","请认证房东身份后发布房源信息！", CodeEnum.MSG_SUCCES.getMsg());
//        }
        return ModelAndViewResult.succeed("/Web_aftersale",null, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_delete(SnailBusiness snailBusiness, HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailBusiness.preUpdate(sessionuser.getId());
        businessMapper.delete(snailBusiness);
        return web_list(snailBusiness,httpSession);
    }

    public ModelAndView admin_list(SnailBusiness snailBusiness,HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        PageHelper.startPage(snailBusiness.getPageNum(), snailBusiness.getPageSize());
        List<SnailBusiness> list= businessMapper.list(snailBusiness);
        PageInfo<SnailBusiness> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_businesslist",list,null, CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView admin_select(SnailBusiness snailUser, HttpSession httpSession){
        SnailBusiness u=businessMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_businessu",u, null, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_insert(SnailBusiness snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preInsert(sessionadmin.getId());
        businessMapper.insert(snailUser);
        SnailBusiness u=businessMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_businessu",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update(SnailBusiness snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        businessMapper.update(snailUser);
        SnailBusiness u=businessMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_businessu",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_delete(SnailBusiness snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        businessMapper.delete(snailUser);

        return admin_list(snailUser,httpSession);
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update_state(SnailBusiness snailUser, HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        businessMapper.updateState(snailUser);

        return admin_list(snailUser,httpSession);
    }

    public Long count(SnailBusiness snailBusiness){
        return businessMapper.count(snailBusiness);
    }

    public List<SnailBusiness> list(SnailBusiness snailBusiness){
        return businessMapper.list(snailBusiness);
    }


}
