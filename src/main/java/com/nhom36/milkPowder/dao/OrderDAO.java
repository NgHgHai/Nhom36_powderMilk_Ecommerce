package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Order;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Order.class)
public interface OrderDAO {
    @SqlQuery("select * from orders where id = :id")
    Order findById(@Bind("id") String id);

    @SqlQuery("select * from orders where user_id = :userId")
    List<Order> findByUserId(@Bind("userId") String userId);


    @SqlUpdate("insert into orders (id, user_id, shipping_address, shipping_phone,shipping_email,shipping_name,shipping_fee, total_price, status, create_at, update_at) values (:id, :userId,:shipping_address, :shipping_phone,:shipping_email,:shipping_name,:shipping_fee, :total_price, :status, now(), now())")
    int insert(@BindBean Order order);

    @SqlUpdate("update orders set shipping_address = :shipping_address, shipping_phone = :shipping_phone, shipping_email = :shipping_email, shipping_name = :shipping_name, shipping_fee = :shipping_fee, total_price = :total_price, status = :status, update_at = now() where id = :id")
    int update(@BindBean Order order);


}
