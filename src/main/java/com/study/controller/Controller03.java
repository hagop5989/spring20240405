package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("main3") // /도 생략가능하다.
public class Controller03 {

    // 경로 : /main3/sub1
    @RequestMapping("sub1")
    public void method1() {
        System.out.println("Controller03.method1");
    }

    // 경로 : /main3/sub2
    @RequestMapping("sub2")
    public void method2() {
        System.out.println("Controller03.method2");
    }

    // 경로 : /main3/sub3
    // 파라미터 : name
    @RequestMapping(value = "sub3", params = "name")
    public void method3() {
        System.out.println("Controller03.method3");
    }

    @RequestMapping(value = "sub3", params = {"name", "age"})
    public void method4() {
        System.out.println("Controller03.method4");
    }

    // /main3/sub3?address&city
    // method5 작성
    @RequestMapping(value = "sub3", params = {"address", "city"})
    public void method5() {
        System.out.println("Controller03.method5");
    }

    // /main/sub3?country&city
    // /main/sub3?city&country
    // /main/sub3?city=seoul&country=korea
    // /main/sub3?city=tokyo&country=japan
    @RequestMapping(value = "sub3", params = {"country", "city"})
    public void method6() {
        System.out.println("Controller03.method6");
    }
}
