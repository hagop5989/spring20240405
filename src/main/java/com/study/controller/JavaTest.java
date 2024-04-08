package com.study.controller;

public class JavaTest {
    static int age = 35;
    static String name = "손흥민";

    public String getName() {
        return name;
    }

    public static String setName(String name) {
        JavaTest.name = name;
        return name;
    }

    public static int getAge() {
        return age;
    }

    public static void setAge(int age) {
        JavaTest.age = age;
    }
}
