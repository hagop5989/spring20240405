package com.study.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;


@Controller
@RequestMapping("main6") // '/' 생략가능
public class Controller06 {

    @RequestMapping("sub1")// '/' 생략가능
    public static void main(String[] args) {
        System.out.println("Controller06.main");
    }

    @RequestMapping("sub2")
    public static void method2(@RequestParam(value = "abc", required = true) String param1,
                               @RequestParam(value = "qwe", required = false) Integer param2) {
        // required에 T,F 값 설정하여 필수 요소로 설정가능
        // url은 String입력되지만 Spring이 Interger로 변환해줌
        System.out.println("Controller06.method2");
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);
    }

    @RequestMapping("sub3")
    public static void method3(@RequestParam(value = "name", required = false) String param1,
                               @RequestParam(value = "age", required = false) Integer param2) {
        System.out.println("Controller06.method3");
        System.out.println("param1 = " + param1);
        System.out.println("param2 = " + param2);

    }

    @RequestMapping("sub4")
    public void method4(@RequestParam(required = false) String name,
                        @RequestParam(required = false) Integer age) {  // @RequestParam("name") String name) 과 동일함, 두 param 이름이 같은경우 생략가능
        System.out.println("Controller06.method4");
        System.out.println("name = " + name);
    }


    @RequestMapping("sub5")
    public void method5(@RequestParam(required = false) String address,
                        @RequestParam String city) {
        System.out.println("address = " + address);
        System.out.println("city = " + city);
    }

    @RequestMapping("sub6")
    public void method6(String Address, // 이렇게도 생략가능하다. 이때 Required 는 false 다.
                        String City) {
        System.out.println("Address = " + Address);
        System.out.println("City = " + City);
    }

    // 메소드 아규먼트 타입이 기본타입(wrapper 포함), String (의 배열)이면
    // RequestParam 으로 간주됨
    @RequestMapping("sub7")
    public void method7(String name, Integer age) {
        System.out.println("Controller06.method7");
        System.out.println("name = " + name);
        System.out.println("age = " + age);
    }

    // /main6/sub8=name=흥민&address=런던&address=서울
    @RequestMapping("sub8")
    public void method8(String name, String[] address) {
        System.out.println("name = " + name);
        System.out.println("address = " + Arrays.toString(address));
    }

    // /main6/sub9?age=33
    // /main6/sub9?age=44&age=55
    // /main6/sub9?city=서울
    // /main6/sub9?city=서울&city=부산
    // todo: method9 작성
    @RequestMapping("sub9")
    public void method9(String[] city, Integer[] age) {
        System.out.println("Arrays.toString(city) = " + Arrays.toString(city));
        System.out.println("Arrays.toString(age) = " + Arrays.toString(age));
    }
}


