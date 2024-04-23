package com.study.core;

import lombok.Getter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application9 {
    public static void main(String[] args) {
        BeanFactory context = SpringApplication.run(Application9.class, args);
        MyClass91 b1 = context.getBean(MyClass91.class);
        MyClass92 b2 = context.getBean(MyClass92.class);
        MyClass91 b3 = b2.getMyClass91();
        System.out.println("91 b1 = " + b1);
        System.out.println("92 b2 = " + b2);
        System.out.println("91 b3 = " + b3);
    }
}

@Component
class MyClass91 {
}

@Component
@Getter
class MyClass92 {
    // Dependency Injection 방법
    // 1. 필드 주입
    @Autowired
    private MyClass91 myClass91; // dependency
    // 2. 생성자 주입

    public MyClass92(MyClass91 myClass91) {
        this.myClass91 = myClass91;
    }
    // 3. setter 주입

}
