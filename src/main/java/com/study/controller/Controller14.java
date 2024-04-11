package com.study.controller;

import com.study.domain.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main14")
public class Controller14 {

    @RequestMapping("sub1")
    public void sub1(Model model) {
        MyBean141 o1 = new MyBean141("신촌", "한국", 33, "흥민");
        MyBean142 o2 = new MyBean142();
        o2.setName("강인");
        o2.setId("19");
        o2.setAge(22);

        model.addAttribute("player1", o1);
        model.addAttribute("player2", o2);
    }

    @RequestMapping("sub2")
    public void sub2(Model model) {
        MyBean142 o1 = new MyBean142();
        o1.setName("김민재");
        MyBean142 o2 = new MyBean142();
        o2.setName("이정후");

        // attribute 명은
        // 클래스명을 lowerCamelCase 로 변경된 이름으로 결정
        // MyBean142
        // 좋은 습관은 이름을 직접 작성하는 것
        model.addAttribute(o1); // myBean142
        model.addAttribute(List.of(o1, o2)); // myBean142List
    }

    @RequestMapping("sub3")
    public void sub3(@ModelAttribute("player1") MyBean142 o1) { // 매개변수로 받음
        o1.setName("오타니");
    }

    @RequestMapping("sub4")
    public String sub4(@ModelAttribute MyBean142 o1) { // 이름안씀
        o1.setName("김민재");
        return "/main14/sub3"; // 이전 것 활용
    }

    @RequestMapping("sub5")
    public String sub5(MyBean142 o1) { // myBean142 로 model 에 attribute 로 들어감
        o1.setName("유재석");
        return "/main14/sub3"; // 이전 것 활용
    }

    @RequestMapping("sub6")
    public void sub6(MyBean142 o1) {
        o1.setName("카리나.");
    }

    @RequestMapping("sub7")
    public String sub7(MyBean143 o1) {
        o1.setAddress("신촌");
        return "/main14/sub7";
    }

    @RequestMapping("sub8")
    public void sub8(MyBean144 o1) {
        System.out.println("o1 = " + o1);
    }

    @RequestMapping("sub9")
    public void sub9(String name,
                     String address,
                     int age,
                     Model model) {
        MyBean145 o1 = new MyBean145();
        o1.setName(name);
        o1.setAddress(address);
        o1.setAge(age);
        model.addAttribute("myBean145", o1);
    }

    @RequestMapping("sub10")
    public String sub10(MyBean145 o1) {
        return "/main14/sub9";
    }

    @RequestMapping("sub11")
    public String sub11(String city, String country, Integer price, Model model) {
        MyBean146 o1 = new MyBean146();
        o1.setCity(city);
        o1.setCountry(country);
        o1.setPrice(price);
        model.addAttribute("myBean146", o1);
        return "/main14/sub9";
    }

    @RequestMapping("sub12")
    public String sub12(MyBean146 o1) {
        System.out.println("o1 = " + o1);
        return "/main14/sub9";
    }

    // /main14/sub13?car=tesla&price=2000&model=k5&country=us
    @RequestMapping("sub13")
    public void sub13(Integer price,
                      String car,
                      MyBean147 o1,
                      MyBean146 o2) {
        System.out.println("price = " + price);
        System.out.println("car = " + car);
        System.out.println("o1 = " + o1);
        System.out.println("o2 = " + o2);
    }
}
