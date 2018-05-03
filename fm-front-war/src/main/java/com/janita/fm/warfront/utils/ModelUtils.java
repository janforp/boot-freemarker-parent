package com.janita.fm.warfront.utils;

import com.janita.fm.warfront.config.CustomProperties;
import org.springframework.ui.Model;

/**
 * Created by Janita on 2018/5/3.
 * Desc:
 */
public class ModelUtils {

    /**
     * 在这统一塞入 baseUrl
     * @param model
     */
    public static void initModel(Model model) {
        model.addAttribute("baseUrl", CustomProperties.BASE_URL);
    }
}
