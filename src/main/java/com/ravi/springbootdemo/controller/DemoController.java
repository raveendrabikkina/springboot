package com.ravi.springbootdemo.controller;

import com.ravi.springbootdemo.entity.User;
import com.ravi.springbootdemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static com.ravi.springbootdemo.util.UserUtil.updateUserAttributes;
import static org.springframework.web.bind.annotation.RequestMethod.*;

@RestController
public class DemoController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/users", method = POST)
    public User createUser(@RequestBody User user) {
        user.setUserId(null);
        return userService.addUSer(user);
    }

    @RequestMapping(value = "/users", method = GET)
    public List<User> getUsers() {

        return userService.getAllUsers();
    }

    @RequestMapping(value = "/users/{userId}", method = GET)
    public User getUserById(@PathVariable int userId) {

        return userService.getUserById(userId);
    }

    @RequestMapping(value = "/users", method = PATCH)
    public User updateUserUsingPartialInput(@RequestBody User user) {
        User userInfo = userService.getUserById(user.getUserId());
        User userToUpdate = updateUserAttributes(userInfo, user);

        return userService.updateUser(userToUpdate);
    }

    @RequestMapping(value = "/users", method = PUT)
    public User updateUser(@RequestBody User user) {

        User userInfo = userService.getUserById(user.getUserId());
        User userToUpdate = updateUserAttributes(userInfo, user);

        return userService.updateUser(userToUpdate);
    }

    @RequestMapping(value = "/users/{userId}", method = DELETE)
    public void deleteUser(@PathVariable Integer userId) {

        User user = new User();
        user.setUserId(userId);
        userService.deleteUser(user);
    }
}
