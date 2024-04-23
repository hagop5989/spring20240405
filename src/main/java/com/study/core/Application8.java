package com.study.core;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
public class Application8 {
    public static void main(String[] args) {
        BeanFactory context = SpringApplication.run(Application8.class, args);
        MyClass81 b1 = context.getBean(MyClass81.class);
        MyClass82 b2 = context.getBean(MyClass82.class);
        Object b3 = context.getBean("someMethod81");
        Object b4 = context.getBean("someMethod82");
        System.out.println(b1 == b3); // true
        System.out.println(b2 == b4); // true
    }
}

@Configuration
class Configuration8 {
    @Bean
    MyClass81 someMethod81() {
        return new MyClass81();
    }

    @Bean
    MyClass82 someMethod82() {
        return new MyClass82();
    }
}

class MyClass81 {

}

class MyClass82 {

}
