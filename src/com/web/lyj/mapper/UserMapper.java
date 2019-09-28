package com.web.lyj.mapper;

import java.util.List;

import com.web.lyj.bean.User;

public interface UserMapper { 
    public Integer getRow();
    public User queryUserById(Integer id);//修改前的查询
    public Integer sameNameEmail(User user);
    public void modify(User user);
    public void register(User user);
    public String login(User user);
    public List<User> pagination(Integer start,Integer pageSize);
    public void remove(Integer id);
    public User search(User user);
    public List<User> managerQueryUser(String name);
   
    public List<User> managerQueryUserAll();
}
