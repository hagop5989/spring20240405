package com.study.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("main18")
public class Controller18 {
    // 상품1 키보드
    @RequestMapping("sub1")
    public void sub1(String product, Integer quantity, HttpSession session){
        if (quantity == null) {
            return;
        }

        HashMap<String,Integer> cart
                = (HashMap<String,Integer>) session.getAttribute("cart"); // getAttribute 는 Object 를 꺼내서 위험하지만 형변환 함

        if (cart == null) {
            cart = new HashMap<String,Integer>();
            session.setAttribute("cart",cart);
        }

        // cart 에 product 가 있으면 quantity 더하기
        // 없으면 (product quantity) 추가
        if(cart.containsKey(product)){
            Integer oldQuantity = cart.get(product);
            cart.put(product, oldQuantity + quantity);
        } else {
            cart.put(product, quantity);
        }
    }

    // 상품2 모니터
    @RequestMapping("sub2")
    public void sub2(String product, Integer quantity, HttpSession session){
        if (quantity == null) {
            return;
        }

        HashMap<String,Integer> cart
                = (HashMap<String,Integer>) session.getAttribute("cart"); // getAttribute 는 Object 를 꺼내서 위험하지만 형변환 함

        if (cart == null) {
            cart = new HashMap<String,Integer>();
            session.setAttribute("cart",cart);
        }

        // cart 에 product 가 있으면 quantity 더하기
        // 없으면 (product quantity) 추가
        if(cart.containsKey(product)){
            Integer oldQuantity = cart.get(product);
            cart.put(product, oldQuantity + quantity);
        } else {
            cart.put(product, quantity);
        }

        // cart 에 product 가 있으면 quantity 더하기
        // 없으면 (product quantity) 추가


    }
    // 상품3 사탕
    @RequestMapping("sub3")
    public void sub3(String product, Integer quantity, HttpSession session){
        if (quantity == null) {
            return;
        }

        HashMap<String,Integer> cart
                = (HashMap<String,Integer>) session.getAttribute("cart"); // getAttribute 는 Object 를 꺼내서 위험하지만 형변환 함

        if (cart == null) {
            cart = new HashMap<String,Integer>();
            session.setAttribute("cart",cart);
        }

        // cart 에 product 가 있으면 quantity 더하기
        // 없으면 (product quantity) 추가
        if(cart.containsKey(product)){
            Integer oldQuantity = cart.get(product);
            cart.put(product, oldQuantity + quantity);
        } else {
            cart.put(product, quantity);
        }

    }
    // 장바구니
    @RequestMapping("sub4")
    public void sub4(HttpSession session){
    }
    @RequestMapping("sub4_1")
    public void sub4_1(HttpSession session){
        session.invalidate();
    }
}
