package com.study.service;

import com.study.domain.MyBean254Customer;
import com.study.domain.MyBean258Employee;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface Mapper07 {

    @Insert("""
            INSERT INTO Employees
            (LastName,FirstName)
            VALUES (#{lastName},#{firstName})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
        // 자동으로 생성된 e 의 property
    int insert(MyBean258Employee e);

    @Insert("""
            INSERT INTO Customers
            (CustomerName)
            VALUES (#{name})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert2(MyBean254Customer c);
}
