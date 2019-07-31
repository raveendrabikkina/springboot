package com.ravi.springbootdemo.util;

import com.ravi.springbootdemo.entity.Address;
import com.ravi.springbootdemo.entity.User;

import static java.util.Objects.isNull;
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
        if (nonNull(userRequest.getAddress())) {
            setAddress(userInfo, userRequest);
        }

        return userInfo;
    }

    private static void setAddress(User userInfo, User userRequest) {

        if (isNull(userInfo.getAddress())) {
            userInfo.setAddress(userRequest.getAddress());
        } else {
            Address addressInfo = userInfo.getAddress();
            Address addressRequest = userRequest.getAddress();
            if (nonNull(addressRequest.getCountry())) {
                addressInfo.setCountry(addressRequest.getCountry());
            }
            if (nonNull(addressRequest.getPostCode())) {
                addressInfo.setPostCode(addressRequest.getPostCode());
            }
            if (nonNull(addressRequest.getState())) {
                addressInfo.setState(addressRequest.getState());
            }
            if (nonNull(addressRequest.getStreet())) {
                addressInfo.setStreet(addressRequest.getStreet());
            }
            if (nonNull(addressRequest.getSuburb())) {
                addressInfo.setSuburb(addressRequest.getSuburb());
            }
            if (nonNull(addressRequest.getUnit())) {
                addressInfo.setUnit(addressRequest.getUnit());
            }
            userInfo.setAddress(addressInfo);
        }
    }
}
