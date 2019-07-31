package com.ravi.springbootdemo.controller;

import com.ravi.springbootdemo.entity.Login;
import com.ravi.springbootdemo.entity.User;
import com.ravi.springbootdemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUser() {

        return "register";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editUser(@ModelAttribute("user") User user, ModelMap modelMap) {

        User userInfo = userService.updateUser(user);
        modelMap.put("user", userInfo);

        return "summary";
    }

    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String editUserPage(@ModelAttribute("user") User user, ModelMap modelMap) {

        modelMap.put("user", user);

        return "edit";
    }

    @RequestMapping(value = "/summary", method = RequestMethod.GET)
    public String showWelcomePage() {

        return "summary";
    }
}
