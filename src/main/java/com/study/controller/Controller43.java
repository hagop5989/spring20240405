package com.study.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Random;

@Controller
@RequestMapping("/api/main43")
public class Controller43 {

    @GetMapping("sub1")
    @ResponseBody // ResponseEntity 응답일 땐 생략 가능
    // ResponseEntity 상태코드를 직접 명시해서 응답할 때
    public ResponseEntity sub1() {
        return ResponseEntity.status(200).build();
    }

    @GetMapping("sub2")
    public ResponseEntity sub2() {
        return ResponseEntity.status(400).build();
    }

    @GetMapping("sub3")
    public ResponseEntity sub3() {
        return ResponseEntity.status(401).build();
    }

    @GetMapping("sub4")
    public ResponseEntity sub4() {
        return ResponseEntity.status(403).build();
    }

    @GetMapping("sub5")
    public ResponseEntity sub5() {
        return ResponseEntity.status(404).build();
    }

    @GetMapping("sub6")
    public ResponseEntity sub6() {
        return ResponseEntity.status(500).build();
    }

    @GetMapping("sub8")
    public ResponseEntity sub8() {
        int[] a = {200, 401, 403, 500};
        int num = new Random().nextInt(a.length);
        System.out.println("num = " + a[num]);
        return ResponseEntity.status(a[num]).build();
    }
}
