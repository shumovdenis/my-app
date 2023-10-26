package ru.shumovdenis.myapp;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SimpleController {

    @GetMapping("/")
    public String helloController() {
        return "Hello Mediascope from Docker!";
    }
}
