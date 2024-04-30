package com.study.service;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
@RequiredArgsConstructor
public class test {
    @GetMapping("test")
    void insert(@Validated @ModelAttribute("testObject") TestObject testObject) {
        System.out.println("testObject = " + testObject);
    }
}

@Data
class TestObject {

    private String id;
    private String password;
}