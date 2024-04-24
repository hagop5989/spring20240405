package com.study.controller;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import com.study.mapper.Mapper04;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@RequestMapping("main33")
@Controller
@RequiredArgsConstructor
public class Controller33 {
    private final Mapper04 mapper;

    @GetMapping("sub1")
    public void method1() {
        List<MyBean331> obj = mapper.select1();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub2")
    public void method() {
        List<MyBean332> obj = mapper.select2();
        obj.forEach(System.out::println);
    }

    @GetMapping("sub3")
    public void method3(Model model) {
        List<MyBean333> obj = mapper.select3();
        obj.forEach(System.out::println);
        model.addAttribute("table10", obj);
    }

    @GetMapping("sub4")
    public void method4() {
        mapper.insert1("hello world", "54321", "876.544", "1999-12-12", "2024-04-24 14:14:14");
    }

    @GetMapping("sub5")
    public void method05() {
        String strVal = "hello my batis";
        Integer intVal = 7890;
        Double doubleVal = 3.14;
        LocalDate dateVal = LocalDate.parse("1999-12-12");
        LocalDateTime dateTimeVal = LocalDateTime.parse("2024-04-24T14:14:14"); // 시간 앞에 T를 붙여야함
        mapper.insert2(strVal, intVal, doubleVal, dateVal, dateTimeVal);
    }

    @GetMapping("sub6")
    public void method06() {
        String title = "타이틀";
        String name = "이름";
        Integer age = 34;
        Double price = 30.01;
        LocalDate published = LocalDate.parse("2020-04-24");
        LocalDateTime inserted = LocalDateTime.parse("2020-04-24T14:14:14");
        int rowCount = mapper.insert3(title, name, age, price, published, inserted);
        System.out.println("처리완료 = " + rowCount);
    }

    @GetMapping("sub7")
    public void method07() {
        MyBean332 obj = new MyBean332();
        obj.setStringCol("hello ");
        obj.setIntCol(7890);
        obj.setDecCol(12.02);
        obj.setDateCol(LocalDate.parse("2020-04-24"));
        obj.setDateTimeCol(LocalDateTime.parse("2020-04-24T14:14:14"));

        mapper.insert4(obj);
    }

    @GetMapping("sub8")
    public void method08() {
        MyBean333 obj = new MyBean333();
        obj.setTitle("토트넘");
        obj.setName("손흥민");
        obj.setAge(10);
        obj.setPrice(10000);
        obj.setPublished(LocalDate.parse("2020-04-24"));
        obj.setInserted(LocalDateTime.parse("2024-04-24T14:12:11"));
        int i = mapper.insert5(obj);
        System.out.println("변경완료 = " + i);
    }

    @GetMapping("sub9")
    public void select9(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
    }

    @PostMapping("sub9")
    public String insert9(String str,
                          String intValue,
                          String realValue,
                          String dateValue,
                          String timeValue) {
        mapper.insert1(str, intValue, realValue, dateValue, timeValue);
        return "redirect:/main33/sub9";
    }

    @GetMapping("sub10")
    public String select10(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
        return "redirect:/main33/sub9";
    }

    @PostMapping("sub10")
    public String insert10(String str,
                           Integer intValue,
                           Double realValue,
                           LocalDate dateValue,
                           LocalDateTime timeValue) {
        mapper.insert2(str, intValue, realValue, dateValue, timeValue);
        return "/main33/sub9";
    }

    @GetMapping("sub11")
    public String select11(Model model) {
        List<MyBean332> list = mapper.select2();
        model.addAttribute("datas", list);
        return "/main33/sub11";
    }

    @PostMapping("sub11")
    public String insert11(MyBean332 data) {
        System.out.println("data = " + data);
        mapper.insert4(data);
        return "redirect:sub11";
    }

    @GetMapping("sub12")
    public String select12(Model model) {
        List<MyBean333> list = mapper.select3();
        model.addAttribute("datas", list);
        return null;
    }

    @PostMapping("sub12")
    public String insert12(MyBean333 data, RedirectAttributes rttr) {
        System.out.println("data = " + data);
        int rowCount = mapper.insert5(data);
        if (rowCount != 0) {
            rttr.addFlashAttribute("message", "이름: " + data.getName() + " 등록완료!");
        }
        return "redirect:/main33/sub12";
    }

    @GetMapping("sub12/select")
    public String selected12(String search, Model model) {
        MyBean333 obj = mapper.select0(search);
        System.out.println("search = " + search);
        System.out.println("obj = " + obj);
        model.addAttribute("selected", obj);
        return "/main33/sub12";
    }

    @PostMapping("sub12/update")
    public String update12(MyBean333 data, RedirectAttributes rttr) {
        mapper.update0(data);
        return "redirect:/main33/sub12";
    }

    @PostMapping("sub12/delete")
    public String delete12(MyBean333 data, RedirectAttributes rttr) {
        int rowCount = mapper.delete0(data);
        rttr.addFlashAttribute("message", rowCount + " 명 삭제됨! 이름: " + data.getName());
        return "redirect:/main33/sub12";
    }

}

