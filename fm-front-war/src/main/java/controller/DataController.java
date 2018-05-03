package controller;

import dto.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;

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

    @PostMapping("/postData")
    public User postData(@RequestParam String name, @RequestParam Integer age) {
        User user = new User();
        user.setName(name);
        user.setAge(new Random().nextInt());
        return user;
    }
}
