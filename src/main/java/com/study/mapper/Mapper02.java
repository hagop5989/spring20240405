package com.study.mapper;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean256Product;
import com.study.domain.MyBean258Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Mapper
public interface Mapper02 {

    @Select("SELECT NOW()")
    String selectNow();

    // 조회 결과 컬럼명과
    // Return Type 객체 property 명이 같으면
    // 값을 바인딩 해줌
    @Select("""
            SELECT ContactName, Address, City, Country
            FROM Customers
            WHERE CustomerID = 1;
            """)
    MyBean254Customer selectOneCustomer();

    @Select("""
            SELECT *
            FROM Customers
            WHERE CustomerID = 1;
            """)
    MyBean254Customer selectOneCustomer2();

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName,
                    Address,
                    City,
                    Country,
                    PostalCode
            FROM Customers
            WHERE CustomerID = 1;
            """)
    MyBean254Customer selectOneCustomer3();

    @Select(
            """
                    SELECT EmployeeID id,
                           LastName,
                           FirstName,
                           BirthDate,
                           Photo,
                           Notes
                    FROM Employees
                    WHERE EmployeeID = #{id}
                    """)
    MyBean258Employee selectOneEmployee1(@RequestParam("id") int id);

    @Select("""
                    SELECT EmployeeID id,
                           LastName,
                           FirstName,
                           Photo,
                           Notes,
                           BirthDate
                    FROM Employees
                    WHERE EmployeeID = #{id}
            """)
    MyBean258Employee selectOneEmployee2(Integer id);

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName,
                   Address,
                   City,
                   Country,
                   PostalCode
            FROM Customers
            WHERE CustomerID = #{id}
            """)
    MyBean254Customer selectOneCustomer4(Integer id);

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName,
                   Address,
                   City,
                   Country,
                   PostalCode
            FROM Customers
            """)
    List<MyBean254Customer> selectAllCustomer1();

    @Select("""
                    SELECT EmployeeID id,
                           LastName,
                           FirstName,
                           Photo,
                           BirthDate,
                           Notes
                    FROM Employees
                    ORDER BY BirthDate DESC ;
            """)
    List<MyBean258Employee> selectAllEmployee1();

    @Select("""
            SELECT CustomerID id,
                   CustomerName name,
                   ContactName,
                   Address,
                   City,
                   Country,
                   PostalCode
            FROM Customers
            WHERE Country = #{country1}
               OR Country = #{country2}
            ORDER BY CustomerID DESC ;
            """)
    List<MyBean254Customer> selectOneCustomerByCountry(String country1, String country2);

    @Select("""
            SELECT ProductID id,
                   ProductName name,
                   SupplierID,
                   CategoryID,
                   Unit,
                   Price
            FROM Products
            WHERE Price BETWEEN #{min} AND #{max}
            ORDER BY ProductID DESC ;
            """
    )
    List<MyBean256Product> selectProduct(Double min, Double max);


}
