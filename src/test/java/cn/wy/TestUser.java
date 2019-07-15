package cn.wy;

import cn.wy.entity.User;
import cn.wy.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 11:07
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class TestUser {

    @Autowired
    private UserService userService;

    @Test
    public void test1(){
        User user = userService.findByLoginName("root");
        System.out.println(user);
    }
}