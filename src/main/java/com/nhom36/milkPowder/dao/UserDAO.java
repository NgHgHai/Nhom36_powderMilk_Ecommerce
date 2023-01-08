package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.User;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(User.class)
public interface UserDAO {
    @SqlQuery("select * from user where email = :email and password = MD5(:password)")
    User login(@Bind("email") String mail, @Bind("password") String password);

    @SqlQuery("select * from user where email = :email")
    User getUserByMail(@Bind("email") String mail);

    @SqlQuery("select * from user where id = :id")
    User getUserById(@Bind("id") String id);

    @SqlQuery("select * from user where active =1")
    User checkActive(@Bind("email") String mail);

    @SqlUpdate("insert into user (id, lastname, firstname, avatar, password, phone, address, email, role, create_at, update_at , active) values (:id, :lastname, :firstname, :avatar, MD5(:password), :phone, :address, :email, :role, now(), now(),0)")
    void register(@BindBean User user);

    @SqlUpdate("update user set active = 1 where id = :id")
    void active(@Bind("id") String id);

    @SqlUpdate("update user set id = :id,lastName = :lastName,firstName = :firstName,avatar = :avatar,password = :password,address = :address,phone = :phone,mail = :mail,active = :active,role = :role where id = :id ")
    void update(@BindBean User user);

    @SqlQuery("select * from user where role = 1")
    List<User> getAllUser();

    @SqlQuery("select id from user where email = :email and role = 0")
    String getAdminIDWithMail(@Bind("email") String email);

    @SqlQuery("select id from user where email = :email and role = 1")
    String getUserIDWithMail(@Bind("email") String email);
}


