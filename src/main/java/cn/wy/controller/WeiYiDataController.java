package cn.wy.controller;

import cn.wy.entity.WeiYiData;
import cn.wy.service.WeiYiDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

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

    @GetMapping(value = "/{id}")
    public Object findById(@PathVariable int id){
        return weiYiDataService.selectById(id);
    }

    @PostMapping
    public Object addData(WeiYiData data){
        int result = weiYiDataService.addData(data);
        Map map = new HashMap();
        if (result>0){
            map.put("success",true);
            map.put("msg","添加成功");
        }else {
            map.put("success",false);
            map.put("msg","添加失败");
        }
        return map;
    }

    @PutMapping
    public Object updData(WeiYiData data){
        int result = weiYiDataService.updData(data);
        Map map = new HashMap();
        if (result>0){
            map.put("success",true);
            map.put("msg","修改成功");
        }else {
            map.put("success",false);
            map.put("msg","修改失败");
        }
        return map;
    }

    @DeleteMapping(value = "/{id}")
    public Object delData(@PathVariable int id){
        int result = weiYiDataService.delData(id);
        Map map = new HashMap();
        if (result>0){
            map.put("success",true);
            map.put("msg","删除成功");
        }else {
            map.put("success",false);
            map.put("msg","删除失败");
        }
        return map;
    }



}