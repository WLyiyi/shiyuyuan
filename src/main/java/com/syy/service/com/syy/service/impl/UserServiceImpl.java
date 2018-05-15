package com.syy.service.com.syy.service.impl;

import com.syy.bean.User;
import com.syy.mapper.UserMapper;
import com.syy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;
    @Override
    public User queryUserById(Integer id) {
        User user = userMapper.getUserById(id);
        return user;
    }

}
