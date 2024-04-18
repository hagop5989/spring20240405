package com.study.controller;

import com.study.domain.MyBean251;
import com.study.domain.MyBean252;
import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Slf4j
@Controller
@RequestMapping("main25")
public class Controller25 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public void method1(@RequestParam(value = "name", required = false)
                        String searchName, Model model) throws SQLException {
        var list = new ArrayList<MyBean251>();
        String sql = STR."""
                SELECT *
                FROM Employees
                WHERE LastName = '\{searchName}\'
                """;
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        try (rs; stmt; conn) {
            while (rs.next()) {
                String id = rs.getString(1);
                String lastName = rs.getString(2);
                String firstName = rs.getString(3);
                String birthDate = rs.getString(4);
                String photo = rs.getString(5);
                String notes = rs.getString(6);

                MyBean251 obj
                        = new MyBean251(id, lastName, firstName, birthDate, photo, notes);
                list.add(obj);
            }

        }
        model.addAttribute("employees", list);
    }

    @GetMapping("sub2")
    public void method2(@RequestParam(value = "name", required = false) String search,
                        // URL 파라미터의 name 값을 search 에 할당
                        @ModelAttribute("products") ArrayList<MyBean252> list)
        // Model 생성 후 "products"에 ArrayList<MyBean252> 을 생성하여 list 에 할당
            throws SQLException {
        // todo : name 요청 파라미터와 일치하는 상품명으로 상품(Products) 조회
        //  예) SELECT * FROM Products WHERE ProductName = 'Chais'
//var list = new ArrayList<MyBean252>();
        String sql =
                STR."""
                    SELECT * FROM Products WHERE ProductName = '\{search}\'
                    """;
        // 사용자의 입력이 쿼리에 일부분 포함될때 Statement 라는 객체를 쓰면 안되고 PreparedStatement (준비되지않은..) 를 써야 함.
        // SQL Injection 공격 방지를 위해서도 써야함.
        // SQL Injection - client 의 입력값 조작하여 server db를 비정상적으로 조작
        Connection conn = dataSource.getConnection();
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        try (rs; stmt; conn) {
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String unit = rs.getString(5);
                String price = rs.getString(6);

                MyBean252 obj = new MyBean252(id, name, unit, price);
                list.add(obj);
                for (MyBean252 selected : list) {
                    log.info(selected.toString());
                }
            }
        }
//        model.addAttribute("products", list);
    }


    @GetMapping("sub3")
    public void method3(@RequestParam(value = "name", required = false) String search,
                        // URL 파라미터의 name 값을 search 에 할당
                        @ModelAttribute("products") ArrayList<MyBean252> list) throws SQLException {
//        String oldSql =
//                STR."""
//                    SELECT * FROM Products WHERE ProductName = '\{search}\'
//                    """;

        String sql = """
                SELECT * FROM Products
                WHERE ProductName = ?
                """;

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        //  첫번째 파라미터로 물음표 위치
        //  두번째 파라미터로 넣을 값
        pstmt.setString(1, search);
        ResultSet rs = pstmt.executeQuery();

        try (rs; pstmt; conn) {
            while (rs.next()) {
                String id = rs.getString(1);
                String name = rs.getString(2);
                String unit = rs.getString(5);
                String price = rs.getString(6);

                MyBean252 obj = new MyBean252(id, name, unit, price);
                list.add(obj);
                for (MyBean252 selected : list) {
                    log.info(selected.toString());
                }
            }
        }
    }

    // 고객 이름 입력 받아 고객 정보 조회
    @RequestMapping("sub4")
    public String method4(String search, Model model) throws SQLException {
        String sql = "SELECT * FROM Customers WHERE CustomerName = ?";
        var list = new ArrayList<MyBean254Customer>();

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, search);

        ResultSet rs = pstmt.executeQuery();

        try (rs; conn; pstmt) {

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String contactName = rs.getString(3);
                String address = rs.getString(4);
                String city = rs.getString(5);
                String postalCode = rs.getString(6);
                String country = rs.getString(7);

                MyBean254Customer obj = new MyBean254Customer();
                obj.setId(id);
                obj.setName(name);
                obj.setContactName(contactName);
                obj.setAddress(address);
                obj.setCity(city);
                obj.setPostalCode(postalCode);
                obj.setCountry(country);

                list.add(obj);
            }
        }
        model.addAttribute("customerList", list);
        model.addAttribute("prevSearch", search);

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub5")
    public String method5(String search, Model model) throws SQLException {
        var list = new ArrayList<MyBean254Customer>();
        String sql = """
                SELECT * FROM Customers
                WHERE CustomerName LIKE ?
                """;
        String keyword = "%" + search + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        ResultSet rs = pstmt.executeQuery();

        try (rs; conn; pstmt) {

            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String contactName = rs.getString(3);
                String address = rs.getString(4);
                String city = rs.getString(5);
                String postalCode = rs.getString(6);
                String country = rs.getString(7);

                MyBean254Customer obj = new MyBean254Customer();
                obj.setId(id);
                obj.setName(name);
                obj.setContactName(contactName);
                obj.setAddress(address);
                obj.setCity(city);
                obj.setPostalCode(postalCode);
                obj.setCountry(country);

                list.add(obj);
            }
        }

        model.addAttribute("customerList", list);
        model.addAttribute("prevSearch", search);

        return "main25/sub4CustomerList";
    }

    @GetMapping("sub6")
    public String method6(String search, Model model) throws SQLException {
        var list = new ArrayList<String>();
        String sql = """
                        SELECT * FROM Products
                        WHERE ProductName LIKE ?
                """;
        String keyword = "%" + search + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        ResultSet rs = pstmt.executeQuery();
        try (rs; conn; pstmt) {
            while (rs.next()) {
                String id = rs.getString(2);
                list.add(id);
            }
        }
        model.addAttribute("list", list);
        return "main25/sub6";
    }

    // 조회 문자열이 contactName 또는 customerName 에 포함된 고객들 조회
    @GetMapping("sub7")
    public String method7(String search, Model model) throws SQLException {
        var list = new ArrayList<MyBean254Customer>();
        String sql = """
                SELECT * FROM Customers
                WHERE CustomerName LIKE ?
                OR ContactName LIKE ?
                """;
        String keyword = "%" + search + "%";
        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        pstmt.setString(2, keyword);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {

        }
        return "main25/sub7";
    }

    // 조회 문자열이 last name 또는 first name 에 포함된 직원들 조회 메소드 작성

    @GetMapping("sub8")
    public String method8(String search, Model model) throws SQLException {
        var list = new ArrayList<MyBean256>();
        String sql = """
                SELECT *
                FROM Employees
                WHERE FirstName LIKE ?
                   OR LastName LIKE ?
                """;
        String keyword = "%" + search + "%";

        Connection conn = dataSource.getConnection();
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, keyword);
        pstmt.setString(2, keyword);
        ResultSet rs = pstmt.executeQuery();
        try (rs; conn; pstmt) {
            while (rs.next()) {
                int employeeID = rs.getInt(1);
                String lastName = rs.getString(2);
                String firstName = rs.getString(3);
                String birthDate = rs.getString(4);
                String notes = rs.getString(5);
                String photo = rs.getString(6);

                list.add(new MyBean256(employeeID, lastName, firstName, birthDate, notes, photo));
            }
        }
        model.addAttribute("list", list);
        model.addAttribute("prevSearch", search);
        return "main25/sub8";
    }

}
