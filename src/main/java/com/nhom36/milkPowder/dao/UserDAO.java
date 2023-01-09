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

    @SqlUpdate("insert into `user` (id, lastname, firstname, avatar, password, phone, address, email, role, create_at, update_at, active) " +
            "values (:id, :lastname, :firstname, :avatar, MD5(:password), :phone, :address, :email, :role, now(), now(),:active)")
    void register(@BindBean User user);

    @SqlUpdate("update user set active = 1 where id = :id")
    void active(@Bind("id") String id);
    @SqlUpdate("UPDATE `user` SET `id`=:id,`lastname`=:lastName,`firstname`=:firstName,`avatar`=:avatar," +
            "`password`=:password,`phone`=:phone,`address`=:address,`email`=:mail,`role`=:role,`update_at`=now(),`active`=:active  where id = :id ")
    void update(@BindBean User user);

    @SqlQuery("select * from user where role = 1")
    List<User> getAllUser();
    @SqlQuery("select * from user where role = 1")
    List<User> getAllAdmin();
    @SqlUpdate("delete from user where id = :id")
    int deleteUser(@Bind("id") String id);

    @SqlQuery("SELECT count(id) FROM `user` where role = 0 ")
    int countUser();

}


