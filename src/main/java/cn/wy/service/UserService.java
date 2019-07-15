package cn.wy.service;

import cn.wy.entity.User;
import cn.wy.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * Project Interview
 * Description todo
 * CreateBy Y on 2019/7/15 11:04
 */
@Service
public class UserService {

    @Autowired
    private UserMapper mapper;

    public User findByLoginName(String name){
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("name",name);
        return mapper.selectByExample(example).get(0);
    }

    public List<User> findAll(){
        return mapper.selectAll();
    }


}