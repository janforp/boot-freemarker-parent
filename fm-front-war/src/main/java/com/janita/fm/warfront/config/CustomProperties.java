package com.janita.fm.warfront.config;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;

/**
 * Created by Janita on 2017/6/23 0023-上午 11:48
 * 该类是：
 */
@ConfigurationProperties
public class CustomProperties implements InitializingBean {

    //发送模板消息的url
    public static String BASE_URL;

    @Value("${base.url}")
    private String baseUrl;


    /**
     * really.send.msg=true
     * @throws Exception
     */
    @Override
    public void afterPropertiesSet() throws Exception {
        BASE_URL = baseUrl;
    }
}
