package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.dao.UserDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

public class AdminService {
    Jdbi jdbi = JDBIConnector.get();
    public int countUser(){
        return jdbi.withExtension(UserDAO.class,dao -> dao.getAllUser().size());
    };
}
