package com.cqut.controller;

import com.cqut.po.Role;
import com.cqut.po.User;
import com.cqut.service.userService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.PanelUI;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

@Controller
public class LoginController {

    //注入Service
    @Autowired
    private userService userService;

    @RequestMapping(value = "/login")
    public String loginPageShow(){
        return "login";
    }

    @ResponseBody
    @RequestMapping(value = "/checkAccount")
    public String check(String user_name,String password,ServletRequest servletRequest){


        if(!userService.checkAccount(user_name,password))
            return "/login";

        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpSession session = httpRequest.getSession();
        session.setAttribute("user_name",user_name);


        //判断权限
        if(userService.getRole(user_name) == 1){
            return "redirect:showArticle";
        }
        else if(userService.getRole(user_name) == 3){
            return "Main";
        }
        return "/login";
    }

    @RequestMapping("/Main")
    public String getMain(){
        return "Main";
    }


    @RequestMapping("/showAddUserPage")
    public String showPage(){
        return "addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(String user_name,String password,int privilege){

        User user = new User();
        user.setUserName(user_name);
        user.setPassword(password);
        Role role = new Role();
        role.setUserName(user_name);
        role.setPrivilege(privilege);
        System.out.println(user.getUserName()+user.getPassword()+role.getUserName()+role.getPrivilege());
        userService.addAccount(user,role);
        return "redirect:showArticle";
    }

    @RequestMapping("/showChangePwdpage")
    public String showPwdPage(){

        return "changePwd";
    }

    @RequestMapping("/changePwd")
    public String changePwd(ServletRequest servletRequest, ServletResponse servletResponse,
                            String password, String newPassword1, String newPassword2) throws IOException {

        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse)servletResponse;
        httpResponse.setCharacterEncoding("UTF-8");
        PrintWriter out = httpResponse.getWriter();
        HttpSession session = httpRequest.getSession();
        String user_name = (String) session.getAttribute("user_name");
        System.out.println(user_name);

        if(userService.checkAccount(user_name,password)){

            if(newPassword1.equals(newPassword2)){
                User user = new User();
                user.setUserName(user_name);
                user.setPassword(newPassword1);
                userService.changePwd(user);
                if(userService.getRole(user_name) == 1){
                    out.print("<script>alert('修改成功！');</script>");
                    return "redirect:showArticle";
                }

                else if (userService.getRole(user_name) == 2){
                    out.print("<script>alert('修改成功！');</script>");
                    return "redirect:showCourse";
                }

                else if(userService.getRole(user_name) == 3){
                    out.print("<script>alert('修改成功！');</script>");
                    return "redirect:Main";
                }

            }
            else{
                out.print("<script>alert('您两次输入的密码不一致！');window.location='/showChangePwdpage';</script>");
            }

        }else{
            out.print("<script>alert('您的密码错误！');window.location='/showChangePwdpage';</script>");
        }
        return "redirect:login";
    }

    @RequestMapping(value = "/getAllUsers")
    public void getAllUsers(Model model) {

        model.addAttribute("userTemp",userService.getUserTemp());
    }

}
