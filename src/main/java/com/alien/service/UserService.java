package com.alien.service;

import com.alien.common.CodeEnum;
import com.alien.common.ModelAndViewResult;
import com.alien.entity.SnailAdmin;
import com.alien.entity.SnailUser;
import com.alien.entity.vo.SessionAdmin;
import com.alien.entity.vo.SessionUser;
import com.alien.mapper.SnailUserMapper;
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
 * Created by alien on 2020/3/21 0021 16:11
 */
@Log4j2
@Service
public class UserService {

    @Autowired
    private SnailUserMapper userMapper;

    /**
     * 登陆接口
     * @param snailUser
     * @return
     */
    public ModelAndView login(SnailUser snailUser, HttpSession httpSession){
        ModelAndView modelAndView = new ModelAndView("/Web_login");
        SnailUser a= userMapper.select(snailUser);
        if(a!=null){
            if(snailUser.getPassword().equals(a.getPassword())){
                SessionUser sessionuser =new SessionUser();
                sessionuser.setId(a.getId());
                sessionuser.setUsername(a.getUsername());
                sessionuser.setHeadImg(a.getHeadImg());
                httpSession.setAttribute("sessionuser", sessionuser);
                return new ModelAndView("redirect:/index/Web_index");
            }
            modelAndView.addObject("msg", "密码不正确！");
            return modelAndView;
        }
        modelAndView.addObject("msg", "用户名不存在！");
        return modelAndView;
    }

    @Transactional(readOnly = false)
    public ModelAndView web_insert(SnailUser snailUser){
        snailUser.preInsert(0);
        userMapper.insert(snailUser);
        return ModelAndViewResult.succeed("/Web_login", "注册成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    public ModelAndView web_select_identity(SnailUser snailUser,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.setId(sessionuser.getId());
        //房东或租户身份 回显，不是 跳转认证界面
        SnailUser u =userMapper.select(snailUser);
        Integer certificate = 2;
        if(certificate == 0 ){
            return ModelAndViewResult.succeed("/Web_certificate",null, CodeEnum.MSG_SUCCES.getMsg());
        }
        return ModelAndViewResult.succeed("/Web_certificate",u,CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_update_identity(SnailUser snailUser,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        //身份认证逻辑
        snailUser.setId(sessionuser.getId());
        snailUser.preUpdate(sessionuser.getId());
        userMapper.update(snailUser);
        SnailUser u=userMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Web_certificate",u, "认证成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    public ModelAndView web_select(SnailUser snailUser,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.setId(sessionuser.getId());
        SnailUser u=userMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Web_usercenter",u, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView web_update(SnailUser snailUser,HttpSession httpSession){
        SessionUser sessionuser=(SessionUser) httpSession.getAttribute("sessionuser");
        if(sessionuser == null){
            return new ModelAndView("redirect:/user/Web_login");
        }
        snailUser.setId(sessionuser.getId());
        snailUser.preUpdate(sessionuser.getId());
        userMapper.update(snailUser);
        SnailUser u=userMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Web_usercenter",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    public ModelAndView admin_list(SnailUser snailUser,HttpSession httpSession){
        PageHelper.startPage(snailUser.getPageNum(), snailUser.getPageSize());
        List<SnailUser> list= userMapper.list(snailUser);
        PageInfo<SnailUser> pageInfo = new PageInfo<>(list);
        return ModelAndViewResult.succeedPage("/Admin_userlist",list, "ok", CodeEnum.MSG_SUCCES.getMsg(),pageInfo.getTotal(),pageInfo.getPageNum(),pageInfo.getPageSize());
    }

    public ModelAndView admin_select(SnailUser snailUser,HttpSession httpSession){
        SnailUser u=userMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_userupdate",u, null, CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_insert(SnailUser snailUser,HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        if(snailUser.getPassword()!=snailUser.getRepassword())
            return ModelAndViewResult.succeed("/Admin_userinsert","两次输入的密码不一致，请重新输入！", CodeEnum.MSG_ERROR.getMsg());
        snailUser.preInsert(sessionadmin.getId());
        userMapper.insert(snailUser);
        SnailUser u=userMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_userupdate",u, "添加用户信息成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_update(SnailUser snailUser,HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        userMapper.update(snailUser);
        SnailUser u=userMapper.select(snailUser);
        return ModelAndViewResult.succeed("/Admin_userupdate",u, "修改成功！", CodeEnum.MSG_SUCCES.getMsg());
    }

    @Transactional(readOnly = false)
    public ModelAndView admin_delete(SnailUser snailUser,HttpSession httpSession){
        SessionAdmin sessionadmin=(SessionAdmin) httpSession.getAttribute("sessionadmin");
        if(sessionadmin == null){
            return new ModelAndView("redirect:/admin/Admin_login");
        }
        snailUser.preUpdate(sessionadmin.getId());
        userMapper.delete(snailUser);

        return admin_list(snailUser,httpSession);
    }

//    public void export(SnailUser user, HttpServletResponse response) throws IOException {
//        List<Integer> list = user.getIds();
//        //导出Excel
//        CreatetExcel(user.selectExportList(list),response);
//    }
//
//    /**
//     * 生成Excel
//     */
//    void CreatetExcel(List<T> list, HttpServletResponse response) throws IOException {
//        //声明一个工作簿
//        HSSFWorkbook workbook = new HSSFWorkbook();
//        //生成一个表格，设置表格名称为"激活码表"
//        HSSFSheet sheet = workbook.createSheet("激活码表");
//        //列名
//        String[] header = new String[] { "激活码", "创建时间", "激活截止时间" };
//        //创建第一行表头
//        HSSFRow headrow = sheet.createRow(0);
//        //遍历添加表头
//        for (int i = 0; i < header.length; i++) {
//            //创建一个单元格
//            HSSFCell cell = headrow.createCell(i);
//            //创建一个内容对象，将内容对象的文字内容写入到单元格中
//            cell.setCellValue(new HSSFRichTextString(header[i]));
//        }
//        for(int i=0;i<list.size();i++){
//            //创建一行
//            HSSFRow row1 = sheet.createRow(i+1);
//            //第一列创建并赋值
//            row1.createCell(0).setCellValue(new HSSFRichTextString(list.get(i).getCodeName()));
//            //第二列创建并赋值
//            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            if(null != list.get(i).getCreateDate()){
//                row1.createCell(1).setCellValue(new HSSFRichTextString(df.format(list.get(i).getCreateDate())));
//            }
//            //第三列创建并赋值
//            if(null != list.get(i).getValidTime()){
//                row1.createCell(2).setCellValue(new HSSFRichTextString(df.format(list.get(i).getValidTime())));
//            }
//        }
//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddhhmmss");
//        String format = simpleDateFormat.format(new Date());
//        String fileName = "激活码信息" + format + ".xls";
//        response.reset();
//        response.setContentType("application/octet-stream; charset=utf-8");
//        response.setHeader("Content-Disposition", "attachment; filename=" + Encodes.urlEncode(fileName));
//        workbook.write(response.getOutputStream());
//
//    }

}
