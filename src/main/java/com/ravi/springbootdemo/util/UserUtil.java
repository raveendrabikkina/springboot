package com.ravi.springbootdemo.util;

import com.ravi.springbootdemo.entity.User;

import static java.util.Objects.nonNull;

public class UserUtil {

    public static User updateUserAttributes(User userInfo, User userRequest) {

        if (0 != userRequest.getAge()) {
            userInfo.setAge(userRequest.getAge());
        }
        if (nonNull(userRequest.getFirstName())) {
            userInfo.setFirstName(userRequest.getFirstName());
        }
        if (nonNull(userRequest.getLastName())) {
            userInfo.setLastName(userRequest.getLastName());
        }
        if (nonNull(userRequest.getMobile())) {
            userInfo.setMobile(userRequest.getMobile());
        }

        return userInfo;
    }
}
