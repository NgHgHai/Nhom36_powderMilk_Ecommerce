package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

public class UserService {
    Jdbi connector = JDBIConnector.get();

public boolean checkLogin(String email, String password) {
    if(email.equals("admin") && password.equals("admin")){
        return true;
    }
    return false;
}

}
