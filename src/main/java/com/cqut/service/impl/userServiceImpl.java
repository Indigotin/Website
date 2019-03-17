package com.cqut.service.impl;

import com.cqut.mapper.RoleMapper;
import com.cqut.mapper.UserMapper;
import com.cqut.po.*;
import com.cqut.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class userServiceImpl implements userService {

    //注入mapper
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RoleMapper roleMapper;

    //登录判断
    @Override
    public boolean checkAccount(String user_name,String password) {

        User user = userMapper.selectByPrimaryKey(user_name);
        if(user == null)
            return false;

        else if(user.getPassword().equals(password))
            return true;

        return false;
    }

    @Override
    public int getRole(String user_name) {

        Role role = roleMapper.selectByPrimaryKey(user_name);
        return role.getPrivilege();
    }

    @Override
    public boolean addAccount(User user, Role role) {

        if(userMapper.insert(user) == 1 && roleMapper.insert(role) == 1)
            return true;
        return false;
    }

    @Override
    public boolean changePwd(User user) {

        if(user.getPassword().length() > 11)
            return false;
        if(userMapper.updateByPrimaryKey(user) == 1)
            return true;
        return false;
    }

    @Override
    public List<userTemp> getUserTemp() {

        List<userTemp> list = new ArrayList<>();
        List<User> userList = userMapper.selectByExample(new UserExample());

        for(int i=0;i<userList.size();i++){

            String user_name = userList.get(i).getUserName();
            Role role = roleMapper.selectByPrimaryKey(user_name);
            list.add(new userTemp(user_name,userList.get(i).getPassword(),role.getPrivilege()));
        }
        //Map<String, Object> map = new HashMap<>();
        //map.put("userTemp",list);
        return list;
    }

}
