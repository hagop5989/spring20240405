package com.study.core;

import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application1 {
    public static void main(String[] args) {
        System.out.println("메인 메소드 실행");
        Controller1 c = new Controller1();
        Dao1 dao1 = new Dao1();
        c.setDao(dao1);
        c.action();
    }
}

class Dao1 {
    public void select() {
        System.out.println("select datas...");
    }
}

class Controller1 {
    private Dao1 dao1; // dependency

    public void setDao(Dao1 dao1) {
        this.dao1 = dao1;
    }

    public void action() {
        dao1.select();
    }
}