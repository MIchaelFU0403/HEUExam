package com.web.lyj.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.lyj.bean.User;
import com.web.lyj.service.UserService;
 
 
@Controller 
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	public static User userSave=new User();
	
	public String optionabc;
	
	List<User> users;
	List<User> usersall = new ArrayList<User>();

	@RequestMapping("/register.action")
    public String register(Map map,User user)
    {		  
		if(userService.register(user))
		{
			System.out.println("添加成功！");
			map.put("usernames",user.getName());
		}else{
		map.put("message","该用户名或邮箱已被注册！！");
		return "registerUser";
		}
   	    return "mainPage";
    }
    
	@RequestMapping("/login.action")
    public String login(Map map,User user)
    {		
			if(userService.login(user))
			{
				userSave=userService.search(user);
				map.put("usernames",user.getName());
				return "mainPage";
				
			}else{
				return "login";
			}
		
    }
	@RequestMapping("userPagination.action")
    public String userPagination(Map map,Integer pageIndex)
    {		  
		Integer pageSize=3;
		map.put("users", userService.pagination(pageIndex, pageSize));
		map.put("pageIndex", pageIndex);
		map.put("totalPages", userService.totalPages(pageSize));
   	    return "admin";
    }
	@RequestMapping("/remove.action")
    public String remove(Integer id)
    {		  
		userService.remove(id);
   	    return "login";
    }
	@RequestMapping("/queryUserById.action")
    public String queryUserById(Map map,Integer id)
    {		  
		map.put("user",userService.queryUserById(id));
   	    return "queryUserById";
    }
	@RequestMapping("/modify.action")
    public String modify(User user)
    {		  
		userService.modify(user);
   	    return "login";
    }
	@RequestMapping("/users.action")
	public String managerQueryUser(Model model, String name) {
		users = userService.managerQueryUser(name);
		System.out.println(users.size());
	model.addAttribute("users", users);
		return "users";
	}

	
	
	@RequestMapping("/searchuser.action")
	public String searchuser(Map map) {
		map.put("searchuser", userService.managerQueryUserAll());
		return "searchuser";
	}
	
	@RequestMapping("/admin.action")
	public String admin() {
		return "admin";
	}
}
