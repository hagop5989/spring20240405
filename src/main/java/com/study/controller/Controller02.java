package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // @RequestMapping 이 실행되려면 @Controller 여야만 한다\
@RequestMapping("/main2")
public class Controller02 { // Controller 는 1개 이상가능하다.

    // 경로: /main2/sub1
    @RequestMapping("/sub1")
    public void sub1() {
        System.out.println("Controller02.sub1");
    }

    // 경로: /main2/sub2
    @RequestMapping("/sub2")
    public void sub2() {
        System.out.println("Controller02.sub2");
    }

    // 경로: /main2/sub3
    @RequestMapping("/sub3")
    public void sub3() {
        System.out.println("Controller02.sub3");
    }
}
