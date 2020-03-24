package com.alien;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.alien")
@SpringBootApplication
public class SpringbootJspApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootJspApplication.class, args);
    }
}
