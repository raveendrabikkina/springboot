package com.ravi.springbootdemo;

import com.ravi.springbootdemo.entity.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringbootdemoApplicationTests {

    @Test
    public void testCreateUser() {

        User user = new User();
        user.setAge(33);
        user.setFirstName("Raveendra");
        user.setLastName("Bikkina");
    }

}
