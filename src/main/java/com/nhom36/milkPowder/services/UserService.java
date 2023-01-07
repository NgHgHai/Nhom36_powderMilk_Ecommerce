package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.*;
import com.nhom36.milkPowder.dao.*;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class UserService {
    Jdbi jdbi = JDBIConnector.get();

    public List<User> getAllUser() {
        return jdbi.withExtension(UserDAO.class, dao -> dao.getAllUser());

    }

    public User getById(String id) {
        return jdbi.withExtension(UserDAO.class, dao -> dao.getUserById(id));
    }

    public void insert(User user) {
        jdbi.useExtension(UserDAO.class, dao -> dao.register(user));
    }

    public void update(User user) {
        jdbi.useExtension(UserDAO.class, dao -> dao.update(user));
    }

    public void delete(String id) {
        jdbi.useExtension(UserDAO.class, dao -> dao.deleteUser(id));
    }



    public boolean checkLogin(String email, String password) {
    if(email.equals("admin") && password.equals("admin")){
        return true;
    }
    return false;
}

}
