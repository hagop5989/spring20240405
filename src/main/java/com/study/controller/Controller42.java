package com.study.controller;

import com.study.domain.MyBean411;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;
import java.util.Random;

@Controller
@RequiredArgsConstructor
@RequestMapping("/api/main42")
public class Controller42 {

    @GetMapping("sub1")
    @ResponseBody
    public String sub1() {
        return "ok";
    }

    @GetMapping("sub2")
    @ResponseBody
    public String sub2() {
        int num = new Random().nextInt(3);
        switch (num) {
            case 0 -> {
                return "가위";
            }
            case 1 -> {
                return "바위";
            }
            case 2 -> {
                return "보";
            }
        }
        return null;
    }

    @GetMapping("sub3")
    @ResponseBody
    public Map<String, Object> method3() {
        return Map.of(
                "name", "흥민",
                "age", 35,
                "married", true,
                "info", Map.of("team", "토트넘", "지역", "런던"),
                "item", List.of("운동화", "축구공", "유니폼"));
    }

    @GetMapping("sub4")
    @ResponseBody
    public Map<String, Object> method4() {
        return Map.of("날짜", "2024-05-16",
                "시간", "오후",
                "시간2", "14:31",
                "item", List.of("item1", "item2"),
                "맵", Map.of("키", "벨류"));
    }

    @GetMapping("sub5")
    @ResponseBody
    public MyBean411 method05() {
        MyBean411 obj = new MyBean411();
        obj.setName("이강인");
        obj.setAge(33);

        return obj; // json 으로 직렬화
    }
}
