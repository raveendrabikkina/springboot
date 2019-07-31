package com.ravi.springbootdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerUser() {

        return "register";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editUser() {

        return "edit";
    }

    @RequestMapping(value = "/summary", method = RequestMethod.GET)
    public String showWelcomePage() {

        return "summary";
    }
}
