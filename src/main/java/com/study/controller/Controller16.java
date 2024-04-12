package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main16")
public class Controller16 {
    @RequestMapping("sub1")
    public void sub1() {
        // /WEB-INF/view/main16/sub1.jsp forward 됨
    }

    @RequestMapping("sub2")
    public String sub2() {
        return "/main16/main/sub2";
    }
}
