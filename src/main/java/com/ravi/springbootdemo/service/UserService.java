package com.ravi.springbootdemo.service;

import com.ravi.springbootdemo.entity.User;
import org.springframework.scheduling.annotation.Async;

import java.util.List;
import java.util.concurrent.CompletableFuture;

public interface UserService {

    List<User> getAllUsers();

    User addUSer(User user);

    User getUserById(int id);

    User updateUser(User user);

    void deleteUser(User user);

    CompletableFuture<User> getUserByIdAsync(int id) throws InterruptedException;
}
