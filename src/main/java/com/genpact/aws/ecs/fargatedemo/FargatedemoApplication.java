package com.genpact.aws.ecs.fargatedemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class FargatedemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(FargatedemoApplication.class, args);
    }

    @RequestMapping("/hello")
    public String getFileName(){
        return "Hello AWS Fargate.....";
    }

}
