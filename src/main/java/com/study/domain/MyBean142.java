package com.study.domain;

import lombok.Data;

// getter, setter , toString, equals, hashCode 메소드 모두 재정의 해줌
// 필수 필드를 세팅하는 생성자도 만들어 줌
@Data

public class MyBean142 {
    private String id;
    private String name;
    private Integer age;

}
