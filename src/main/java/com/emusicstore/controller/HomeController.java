package com.emusicstore.controller;

import org.hibernate.loader.custom.Return;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home()
    {

        return "home";
    }
}
