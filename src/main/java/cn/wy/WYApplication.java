package cn.wy;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 9:50
 */
@SpringBootApplication
@MapperScan(basePackages = "cn.wy.mapper")
public class WYApplication {

    public static void main(String[] args) {
        SpringApplication.run(WYApplication.class,args);
    }
}