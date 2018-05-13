package com.janita.fm.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Janita on 2018/5/3.
 * Desc:
 */
@Controller
public class PageController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @GetMapping("/hello")
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        model.addAttribute("name", name);
        return "hello";
    }

    @GetMapping("/multImageUpload")
    public String multImageUpload(Model model) {
        model.addAttribute("baseUrl", "http://127.0.0.1:8111/");
        return "multImageUpload";
    }

    @GetMapping("/page/{name}")
    public String page(@PathVariable String name, Model model) {
        model.addAttribute("name", name);
        return "page";
    }

    /**
     * http://localhost:8080/vue
     * @param model
     * @return
     */
    @GetMapping("/vue")
    public String vue(Model model) {
        model.addAttribute("name", "Jania");
        return "vue";
    }
}
