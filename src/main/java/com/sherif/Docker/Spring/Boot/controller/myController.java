package com.sherif.Docker.Spring.Boot.controller;

import org.springframework.stereotype.Controller;

@Controller
public class myController {
    @RequestMapping
    public String name(){
        return "Hello from after military status";
    }
}
