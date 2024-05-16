package com.study.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;
import java.util.Random;

@Controller
@RequiredArgsConstructor
@RequestMapping("/api/main41")
public class Controller41 {

    private final TestMapper testMapper;

    @PostMapping("sub1")
    public void sub1(@RequestBody Map<String, Object> map) {
        // @RequestBody
        // 역직렬화 (파싱, 디코딩) JSON -> Map
        System.out.println("Controller41.sub1");
        System.out.println("map = " + map);
    }

    @PostMapping("sub2")
    public void sub2(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    @PostMapping("sub3")
    public void sub3(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    @PostMapping("sub4")
    @ResponseBody
    public Map<String, Object> sub4(@RequestBody Map<String, Object> map) {
        int randomNum = new Random().nextInt(20);
        String s = testMapper.randomSelect(randomNum);
        System.out.println("map = " + map);
        map.clear();
        map.put(s, randomNum);
        System.out.println("map = " + map);
        return map;
    }

    @PostMapping("sub5")
    public void sub5(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
        Object name = map.get("name");
        System.out.println("name = " + name);
        System.out.println("name.getClass() = " + name.getClass());

        Object age = map.get("age");
        System.out.println("age = " + age);
        System.out.println("age.getClass() = " + age.getClass());

        Object item = map.get("item");
        System.out.println("item = " + item);
        System.out.println("item.getClass() = " + item.getClass());
    }
}
