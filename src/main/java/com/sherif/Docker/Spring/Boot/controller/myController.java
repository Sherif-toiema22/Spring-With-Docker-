package com.sherif.Docker.Spring.Boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class myController {
    @GetMapping
    public String name(){
        return "Hello from after military status";
    }
}
