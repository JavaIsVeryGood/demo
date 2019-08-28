package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PageController {
    @RequestMapping(value = {"/", "/index"})
    public String index() {
        return "hello";
    }
    @RequestMapping("/result")
    public String result(){
        return "result";
    }
    @RequestMapping("/head")
    public String head(){
        return "head";
    }
}
