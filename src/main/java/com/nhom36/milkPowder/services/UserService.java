package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.dao.UserDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

public class UserService {
    Jdbi connector = JDBIConnector.get();

    public User login(String email, String password) {
        return connector.withExtension(UserDAO.class, handle -> handle.login(email, password));
    }

    public boolean checkEmail(String email) {
        return connector.withExtension(UserDAO.class, handle -> {
            String id;
            return ((id = handle.getUserIDWithMail(email)) != null);
        });
    }

    public User findUserEmail(String email) {
        return connector.withExtension(UserDAO.class, handle -> handle.getUserByMail(email));
    }
}
