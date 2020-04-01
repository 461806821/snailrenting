package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailInform;
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
public class InformService {

//    @Autowired
//    private SnailInformMapper userMapper;
//
//
//    public ModelAndView list(SnailInform snailUser){
//        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
//        List<SnailInform> list= userMapper.list(snailUser);
//        PageInfo<SnailInform> pageInfo = new PageInfo<>(list);
//        return ModelAndViewResult.succeedPage("/Admin_userlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
//    }
//
//    public ModelAndView select(SnailInform snailUser){
//        SnailInform u=userMapper.select(snailUser);
//        return ModelAndViewResult.succeed("/Admin_userupdate",u, null, CodeEnum.MSG_SUCCES.getMsg());
//    }
//
//    @Transactional(readOnly = false)
//    public ModelAndView insert(SnailInform snailUser){
//        snailUser.setId(UuidUtils.getUUID());
//        snailUser.setDelFlag(0);
////        snailUser.preInsert(operatid);
//        userMapper.insert(snailUser);
//        SnailInform u=userMapper.select(snailUser);
//        return ModelAndViewResult.succeed("/Admin_userupdate",u, "添加成功！", CodeEnum.MSG_SUCCES.getMsg());
//    }
//
//    @Transactional(readOnly = false)
//    public ModelAndView update(SnailInform snailUser){
////        snailUser.preUpdate(operatid);
//        userMapper.update(snailUser);
//        SnailInform u=userMapper.select(snailUser);
//        return ModelAndViewResult.succeed("/Admin_userupdate",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
//    }
//
//    @Transactional(readOnly = false)
//    public ModelAndView delete(SnailInform snailUser, HttpSession httpSession){
//        SnailAdmin admin=(SnailAdmin) httpSession.getAttribute("admin");
//        snailUser.preUpdate(admin.getId());
//        userMapper.delete(snailUser);
//
//        return list(snailUser);
//    }

}
