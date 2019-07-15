package cn.wy;

import cn.wy.service.WeiYiDataService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 10:06
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class TestWeiYiData {

    @Autowired
    private WeiYiDataService weiYiDataService;

    @Test
    public void selectAll(){
        weiYiDataService.selectAll().forEach(d->{
            System.out.println(d);
        });
    }


}