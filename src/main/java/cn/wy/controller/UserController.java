package cn.wy.controller;

import cn.wy.entity.User;
import cn.wy.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 11:11
 */
@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public List<User> findAll(){
        return userService.findAll();
    }

    @GetMapping(value = "/currentUser")
    public String getCurrentUser(){
        String user = (String) SecurityUtils.getSubject().getPrincipal();
        return user;
    }
}