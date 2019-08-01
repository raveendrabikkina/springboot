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

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/authenticate", method = RequestMethod.POST)
    public String authenticate(@ModelAttribute("login") Login login, ModelMap modelMap) {
        try {
            CompletableFuture<User> userByIdAsync = userService.getUserByIdAsync(login.getUserId());
            CompletableFuture.allOf(userByIdAsync).join();
            User user = userByIdAsync.get();
            System.out.println("user:" + user);
            modelMap.put("user", user);
        } catch (InterruptedException | ExecutionException e) {
            System.out.println("Exception:" + e.getMessage());
        }

        return "summary";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {

        return "login";
    }
}
