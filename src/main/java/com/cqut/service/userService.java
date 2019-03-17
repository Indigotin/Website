package com.cqut.service;

import com.cqut.po.Role;
import com.cqut.po.User;
import com.cqut.po.userTemp;

import java.util.List;
import java.util.Map;

public interface userService {

    //匹配用户名及密码
    boolean checkAccount(String user_name,String password);

    //权限角色判断
    int getRole(String user_name);

    //添加账户
    boolean addAccount(User user, Role role);

    //修改密码
    boolean changePwd(User user);

    //获取所有用户及角色
    List<userTemp> getUserTemp();
}
