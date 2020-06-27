package com.ahpu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan//扫描@WebFilter、@WebServlet等组件
public class graduation {
    public static void main(String[] args) {
        SpringApplication.run(graduation.class, args);
    }
}
