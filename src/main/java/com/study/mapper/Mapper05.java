package com.study.mapper;

import lombok.Data;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper05 {

    @Select("""
            SELECT c.CustomerID, c.CustomerName, SUM(p.Price * od.Quantity) AS purchase
            FROM OrderDetails od
            JOIN Orders o ON od.OrderID =o.OrderID
            JOIN Customers c ON c.CustomerID = o.CustomerID
            JOIN Products p ON p.ProductID = od.ProductID
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY c.CustomerID, c.CustomerName
            ORDER BY purchase DESC                        
            """)
    List<Mapper05.CustomerPurchase> selectcustomerPurchaseList(String from, String to);

    @Data
    static class EmployeeIncome {
        private Integer employeeId;
        private String lastName;
        private String firstName;
        private Double income;
    }

    @Data
    static class CustomerPurchase {
        private Integer customerId;
        private String customerName;
        private Double purchase;
    }


    @Select("""
            SELECT e.EmployeeID,
                   e.LastName,
                   e.FirstName,
                   SUM(od.Quantity * p.Price) AS income
            FROM Orders o 
            JOIN Employees e ON e.EmployeeID = o.EmployeeID
            JOIN OrderDetails od ON o.OrderID = od.OrderID
            JOIN Products p ON od.ProductID = p.ProductID
            WHERE o.OrderDate BETWEEN #{from} AND #{to}
            GROUP BY e.EmployeeID
            ORDER BY income DESC
                """)
    List<EmployeeIncome> selectIncomeList(String from, String to);
}
