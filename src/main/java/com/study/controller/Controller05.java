package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("main5")
public class Controller05 {

    // /main5/sub1?city=seoul
    @RequestMapping("sub1")
    public void method1(@RequestParam("city") String param) {
        System.out.println(param + "검색 로직 실행");
    }

    // /main5/sub2?address=sinchon
    // /main5/sub2?address=gangnam
    // /main5/sub2?address=hondae
    @RequestMapping("sub2")
    public void method2(@RequestParam("address") String param) {
        System.out.println(param + "검색 로직 실행");
        System.out.println("https://search.naver.com/search.naver?query=" + param + "가는길");
    }

    // /main5/sub3?age=30
    @RequestMapping("sub3")
    public void method3(@RequestParam("age") Integer param) {
        if (param < 18) {
            System.out.println("청소년 관련 정보 출력");
        } else if (param < 35) {
            System.out.println("성년 관련 정보 출력");
        } else if (param < 65) {
            System.out.println("중장년 관련 정보 출력");
        } else {
            System.out.println("노인 관련 정보 출력");
        }
    }

    // /main5/sub4?height=145.1
    // /main5/sub4?height=190.5
    @RequestMapping("sub4")
    public void method4(@RequestParam("height") Double param) {
        if (param < 145) {
            System.out.println("작은 키");
        } else if (param < 190) {
            System.out.println("중간 키");
        } else {
            System.out.println("큰 키");
        }
    }
}
