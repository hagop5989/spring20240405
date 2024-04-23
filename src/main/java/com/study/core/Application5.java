package com.study.core;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

@SpringBootApplication
public class Application5 {
    public static void main(String[] args) {
        BeanFactory context = SpringApplication.run(Application5.class, args);
        MyClass51 b1 = context.getBean(MyClass51.class);
        System.out.println("b1 = " + b1);
        MyClass52 b2 = context.getBean(MyClass52.class);
        System.out.println("b2 = " + b2);
        Object b3 = context.getBean("mybean1");
        System.out.println("b3 = " + b3);
    }
}

@Component
class MyClass51 {

}

// spring bean 이름 부여
// 클래스 명을 lowerCamelCase 로 바꾼것을 이름으로 사용
@Component("mybean1")
class MyClass52 {

}

