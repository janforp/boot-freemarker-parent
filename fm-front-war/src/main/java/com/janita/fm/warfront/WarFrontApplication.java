package com.janita.fm.warfront;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * Created by Janita on 2018/5/3.
 * Desc:
 */
@SpringBootApplication
public class WarFrontApplication  extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(WarFrontApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(WarFrontApplication.class, args);
    }
}
