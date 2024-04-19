package com.study.controller;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;

@Controller
@RequestMapping("main27")
public class Controller27 {
    @Autowired
    private DataSource dataSource;

    @GetMapping("sub1")
    public String sub1(@RequestParam(defaultValue = "1") Integer page, Model model) throws SQLException {
        Connection conn = dataSource.getConnection();

        String countSql = """
                SELECT * 
                FROM Customers
                ORDER BY CustomerID
                """;
        Statement stmt = conn.createStatement();
        stmt.executeQuery(countSql);
        ResultSet rs0 = stmt.getResultSet();
        var list0 = new ArrayList<String>();
        while (rs0.next()) {
            list0.add(rs0.getString(1));
        }
        int sizeNum = (int) (list0.size() / 10) + 1;
        System.out.println("sizeNum = " + sizeNum);
        model.addAttribute("sizeNum", sizeNum);


        int offset = (page - 1) * 10;
        String sql = """
                SELECT * 
                FROM Customers
                ORDER BY CustomerID
                LIMIT ?, 10
                """;

        var list = new ArrayList<MyBean254Customer>();


        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, offset);
        ResultSet rs = ps.executeQuery();

        try (rs; ps; conn) {
            while (rs.next()) {
                MyBean254Customer customer = new MyBean254Customer();

                customer.setId(rs.getInt(1));
                customer.setName(rs.getString(2));
                customer.setContactName(rs.getString(3));
                customer.setAddress(rs.getString(4));
                customer.setCity(rs.getString(5));
                customer.setPostalCode(rs.getString(6));
                customer.setCountry(rs.getString(7));

                list.add(customer);
            }

            model.addAttribute("customerList", list);
        }

        int firstPg = 1;
        int lastPg = 1;
        int nxtPg = 1;
        int prvPg = 1;

        // page 로직
        if (page - 4 > 0) {
            firstPg = page - 4;
            lastPg = page + 5;
        } else {
            firstPg = 1;
            lastPg = page + 5;
        }
        if (lastPg > sizeNum) {
            lastPg = sizeNum;
            firstPg = lastPg - 10;
        } else if (firstPg == 1) {
            lastPg = 10;
        }
        // prvPg 로직
        if (firstPg > 10) {
            prvPg = firstPg - 6;
        } else {
            prvPg = 1;
        }

        // nxtPg 로직
        if (firstPg >= sizeNum - 10) {
            nxtPg = sizeNum - 5;
        } else if (sizeNum > nxtPg) {
            nxtPg = page + 10;
        }

        model.addAttribute("firstPg", firstPg);
        model.addAttribute("lastPg", lastPg);
        model.addAttribute("prvPg", prvPg);
        model.addAttribute("nxtPg", nxtPg);

        return "main27/sub1";
    }

    @RequestMapping("sub2")
    public String sub2(@RequestParam(defaultValue = "1") Integer page, Model model) throws SQLException {
        Connection conn = dataSource.getConnection();

        // 페이지 이동
        String countSql = """
                SELECT * 
                FROM Employees
                ORDER BY EmployeeID
                """;
        Statement stmt = conn.createStatement();
        ResultSet rs0 = stmt.executeQuery(countSql);
        var list0 = new ArrayList<String>();
        while (rs0.next()) {
            list0.add(rs0.getString(1));
        }
        int sizeNum = (int) (list0.size() / 10) + 1;
        System.out.println("sizeNum = " + sizeNum);
        model.addAttribute("sizeNum", sizeNum);


// 페이지 보여주기
        int offset = (page - 1) * 10;
        String sql = """
                SELECT * 
                FROM Employees
                ORDER BY EmployeeID
                LIMIT ?, 10
                """;

        var list = new ArrayList<MyBean258Employee>();

        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, offset);
        ResultSet rs = ps.executeQuery();

        try (rs; ps; conn) {
            while (rs.next()) {
                MyBean258Employee employee = new MyBean258Employee();

                employee.setId(rs.getInt(1));
                employee.setLastName(rs.getString(2));
                employee.setFirstName(rs.getString(3));
                employee.setNotes(rs.getString(4));
                employee.setPhoto(rs.getString(5));
                employee.setBirthDate(rs.getString(6));

                list.add(employee);
            }
            model.addAttribute("employees", list);
        }
        // 기본값 설정
        int firstPg = 1;
        int lastPg = 1;
        int nxtPg = 1;
        int prvPg = 1;

        // page 로직
        if (page - 4 > 0) {
            firstPg = page - 4;
            lastPg = page + 5;
        } else {
            firstPg = 1;
            lastPg = page + 5;
        }
        if (lastPg > sizeNum) {
            lastPg = sizeNum;
            firstPg = lastPg - 10;
        } else if (firstPg == 1) {
            lastPg = 10;
        }

        // prvPg 로직
        if (firstPg > 10) {
            prvPg = firstPg - 6;
        } else {
            prvPg = 1;
        }

        // nxtPg 로직
        if (firstPg >= sizeNum - 10) {
            nxtPg = sizeNum - 5;
        } else if (sizeNum > nxtPg) {
            nxtPg = page + 10;
        }

        model.addAttribute("firstPg", firstPg);
        model.addAttribute("lastPg", lastPg);
        model.addAttribute("prvPg", prvPg);
        model.addAttribute("nxtPg", nxtPg);
        model.addAttribute("nowPage", page);


        return "main27/sub2";
    }
}
