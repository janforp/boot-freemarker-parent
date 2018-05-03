package com.janita.fm.warfront.controller;

import com.janita.fm.warfront.config.CustomProperties;
import com.janita.fm.warfront.utils.ModelUtils;
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
    public String index(Model model) {
        ModelUtils.initModel(model);
        return "index";
    }

    @GetMapping("/hello")
    public String hello(Model model, @RequestParam(value="name", required=false, defaultValue="World") String name) {
        model.addAttribute("name", name);
        ModelUtils.initModel(model);
        return "hello";
    }

    @GetMapping("/page/{name}")
    public String page(@PathVariable String name, Model model) {
        model.addAttribute("name", name);
        ModelUtils.initModel(model);
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
        ModelUtils.initModel(model);
        return "vue";
    }


}
