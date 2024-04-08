package com.study.domain;

public class MyBean091 {
    // get 또는 set 메소드가있어야함
    // name, age 속성(property)가 있음
    // property 명은 getter, setter 의 메소드명으로 부터 결정됨
    // get, set 을 제거하고 앞글자를 소문자로 바꾼 것이 property 의 이름
    public String getName() {
        return "흥민";
    }

    public Integer getAge() {
        return 30;
    }
}
