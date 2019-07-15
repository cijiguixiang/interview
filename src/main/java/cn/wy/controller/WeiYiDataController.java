package cn.wy.controller;

import cn.wy.service.WeiYiDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 14:20
 */
@RestController
@RequestMapping(value = "/data")
public class WeiYiDataController {

    @Autowired
    private WeiYiDataService weiYiDataService;

    @GetMapping
    public Object findAll(){
        return weiYiDataService.selectAll();
    }

}