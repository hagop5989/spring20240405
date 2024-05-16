package com.study.controller;

import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;

@Controller
@RequiredArgsConstructor
public class Controller40 {
    private final TestMapper mapper;


    @GetMapping("/api/someurl")
    public void method1() {
        System.out.println("겟)Controller40.method1");
    }

    @PostMapping("/api/someurl")
    public void method2() {
        System.out.println("포스트)Controller40.method2");
    }

    @GetMapping("/api/someurl2")
    @ResponseBody
    public String method3(Integer id) {
        String selected = mapper.select(id);
        System.out.println("겟)");
        System.out.println("선택된 이름 : " + selected);
        return selected;
    }

    @PostMapping("/api/someurl2")
    public void method4() {
        System.out.println("포스트)");
    }

    @GetMapping("/api/someurl3")
    public void method5(@RequestParam("id") Integer id,
                        @RequestParam("name") String name,
                        @RequestParam("email") String email
    ) {
        System.out.println("id = " + id);
        System.out.println("name = " + name);
        System.out.println("email = " + email);
    }

    @PostMapping("/api/someurl3")
    public void method6(Integer id, String city, String country) {
        System.out.println("id = " + id);
        System.out.println("city = " + city);
        System.out.println("country = " + country);
    }

    @GetMapping("/api/someurl4")
    public void method7(String[] name, Integer age, String country) {
        System.out.println("name = " + Arrays.toString(name));
        System.out.println("age = " + age);
        System.out.println("country = " + country);
    }

    @PostMapping("/api/someurl4")
    public void method8(String day, String time, String dayDetail, String now) {
        System.out.println("day = " + day);
        System.out.println("time = " + time);
        System.out.println("dayDetail = " + dayDetail);
        System.out.println("now = " + now);
    }

}

@Mapper
interface TestMapper {
    @Select("""
            SELECT LastName FROM w3schools.Employees
            WHERE EmployeeID = #{id}
            """)
    String select(Integer id);

    @Select("""
            SELECT ProductName FROM w3schools.Products WHERE ProductID = ${randomNum}
            """)
    String randomSelect(int randomNum);
}
