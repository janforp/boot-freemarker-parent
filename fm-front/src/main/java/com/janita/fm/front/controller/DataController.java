package com.janita.fm.front.controller;

import com.janita.fm.front.dto.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Janita on 2018/5/3.
 * Desc:
 */
@RestController
public class DataController {

    @GetMapping("/data")
    public User data() {
        User user = new User();
        user.setAge(29);
        user.setName("Janita");
        return user;
    }
}
