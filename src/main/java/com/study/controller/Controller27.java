package com.study.controller;

import com.study.domain.MyBean254Customer;
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
        String totalSql = """
                SELECT * 
                FROM Customers
                ORDER BY CustomerID
                """;
        Statement stmt = conn.createStatement();
        stmt.executeQuery(totalSql);
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

        return "main27/sub1";
    }
}
