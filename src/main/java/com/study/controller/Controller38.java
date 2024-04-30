package com.study.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.UUID;

@Controller
@RequiredArgsConstructor
public class Controller38 {
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/path1")
    @PreAuthorize("isAuthenticated()") // 로그인 됐을 시에 가능
    public void path1() {
        System.out.println("Controller38.path1");
        System.out.println(UUID.randomUUID().toString());
    }

    @GetMapping("/path2")
    @PreAuthorize("hasAuthority('user')")
    public void path2() {
        System.out.println("유저 권한이면 실행 가능");
    }

    @GetMapping("/path3")
    @PreAuthorize("hasAuthority('admin')")
    public void path3() {
        System.out.println("어드민 권한이면 실행 가능");
    }

    @GetMapping("/path4")
    public void path4() {

    }
}
