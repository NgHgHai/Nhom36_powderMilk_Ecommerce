package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.User;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

@RegisterBeanMapper(User.class)
public interface UserDAO {
@SqlQuery("select * from user where  = :username and password = :password and role = :role and active = 1")
User loginAmin(String username, String password, String role);
}
