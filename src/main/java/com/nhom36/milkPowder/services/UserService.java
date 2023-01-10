package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.dao.UserDAO;

import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class UserService {
    Jdbi jdbi = JDBIConnector.get();

    public List<User> getAllUser() {
        return jdbi.withExtension(UserDAO.class, dao -> dao.getAllUser());

    }
    public List<User> getAllAdmin() {
        return jdbi.withExtension(UserDAO.class, dao -> dao.getAllAdmin());

    }
    public User getById(String id) {
        return jdbi.withExtension(UserDAO.class, dao -> dao.getUserById(id));
    }

    public int countUser(){ return jdbi.withExtension(UserDAO.class,dao -> dao.countUser()); }

    public void insert(User user) {
        jdbi.useExtension(UserDAO.class, dao -> dao.register(user));
    }

    public void update(User user) {
        jdbi.useExtension(UserDAO.class, dao -> dao.update(user));
    }

    public void delete(String id) {
        jdbi.useExtension(UserDAO.class, dao -> dao.deleteUser(id));
    }




    public User login(String email, String password) {
        return jdbi.withExtension(UserDAO.class, handle -> handle.login(email, password));
    }

    public boolean checkEmail(String email) {
        return jdbi.withExtension(UserDAO.class, handle -> {
            String id;
            return ((id = handle.getUserByMail(email).getId()) != null);
        });

    
    }

    public User findUserEmail(String email) {
        return jdbi.withExtension(UserDAO.class, handle -> handle.getUserByMail(email));
    }
}
