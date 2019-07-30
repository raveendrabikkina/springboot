package com.ravi.springbootdemo.service.impl;


import com.ravi.springbootdemo.entity.User;
import com.ravi.springbootdemo.repository.UserRepository;
import com.ravi.springbootdemo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepo;

    @Override
    public List<User> getAllUsers() {
        return userRepo.findAll();
    }

    @Override
    public User addUSer(User user) {
        return userRepo.save(user);
    }

    @Override
    public User getUserById(int userId) {
        return userRepo.getOne(userId);
    }

    @Override
    public User updateUser(User user) {
        return userRepo.save(user);
    }

    @Override
    public void deleteUser(User user) {
        userRepo.delete(user);
    }
}
