package com.study.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class Controller40 {

    @GetMapping("/api/someurl")
    public void method1() {
        System.out.println("겟)Controller40.method1");
    }

    @PostMapping("/api/someurl")
    public void method2() {
        System.out.println("포스트)Controller40.method2");
    }
}
