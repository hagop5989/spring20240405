package com.study.controller;

import com.study.domain.MyBean241;
import com.study.domain.MyBean242;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

@Controller
@RequestMapping("main24")
public class Controller24 {
    @Autowired
    private DataSource dataSource;

    @RequestMapping("sub1")
    public void method1(Model model) throws Exception {
        var list = new ArrayList<MyBean241>();
        String sql = """
                SELECT FirstName, LastName
                FROM Employees
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (conn; stmt; rs;) {
            while (rs.next()) {
                MyBean241 bean = new MyBean241();
                bean.setFirstName(rs.getString(1));
                bean.setLastName(rs.getString(2));
                list.add(bean);
            }
        }
        model.addAttribute("employees", list);
    }

    @RequestMapping("sub2")
    public void method2(@ModelAttribute("customers") ArrayList<MyBean242> list) throws Exception {
        String sql = """
                SELECT CustomerName, City, Country
                FROM Customers
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (conn; stmt; rs;) {
            while (rs.next()) {
                MyBean242 bean = new MyBean242();
                bean.setCustomerName(rs.getString(1));
                bean.setCity(rs.getString(2));
                bean.setCountry(rs.getString(3));
                list.add(bean);
            }
        }
    }

    @RequestMapping("sub3")
    public void method3(@ModelAttribute("list") ArrayList<String> list)
            throws Exception {
        // 고객 있는 나라 들을 중복없이 조회 후 jsp에서 출력
        String sql = """
                SELECT DISTINCT Country FROM Customers
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet resultSet = stmt.executeQuery(sql);
        try (resultSet; stmt; conn;) {
            while (resultSet.next()) {
                String a = resultSet.getString(1);
                list.add(a);
            }
        }
    }


}
