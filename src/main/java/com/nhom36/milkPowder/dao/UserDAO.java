package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.User;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.statement.SqlQuery;

@RegisterBeanMapper(User.class)
public interface UserDAO {
    @SqlQuery("select count(id) from User")
    public int countUser();
}
