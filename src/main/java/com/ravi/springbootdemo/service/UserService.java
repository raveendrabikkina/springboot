package com.ravi.springbootdemo.service;

import com.ravi.springbootdemo.entity.User;

import java.util.List;

public interface UserService {

    List<User> getAllUsers();

    User addUSer(User user);

    User getUserById(int id);

    User updateUser(User user);

    void deleteUser(User user);
}
