package cn.wy.view;

import cn.wy.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 11:19
 */
@Controller
public class ViewController {

    @GetMapping(value = "/")
    public String loginJsp(){
        return "login";
    }

    @RequestMapping(value = "/login")
    public ModelAndView login(User user){
        UsernamePasswordToken token = new UsernamePasswordToken(user.getName(),user.getPwd());
        Subject subject = SecurityUtils.getSubject();
        subject.login(token);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg","欢迎登录");
        modelAndView.addObject("success",true);
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @GetMapping(value = "/error")
    public String error(){
        return "error";
    }
}