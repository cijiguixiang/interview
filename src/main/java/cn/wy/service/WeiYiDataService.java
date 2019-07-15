package cn.wy.service;

import cn.wy.entity.WeiYiData;
import cn.wy.mapper.WeiYiDataMapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 10:35
 */
@Service
public class WeiYiDataService {
    private Logger logger = Logger.getLogger(WeiYiDataService.class);

    @Autowired
    private WeiYiDataMapper mapper;

    public List<WeiYiData> selectAll(){
        logger.info("查询被调用");
        return mapper.selectAll();
    }
}