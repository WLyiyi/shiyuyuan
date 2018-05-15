package com.syy.controller;

import com.syy.bean.User;
import com.syy.service.UserService;
import com.syy.utils.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/userById/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getUserById(@PathVariable("id") Integer id) {
        User user = userService.queryUserById(id);
        return Msg.success().add("user",user);
    }
}
