package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Cart;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Cart.class)
public interface CartDAO {
    @SqlQuery(value = "SELECT * FROM `cart` where id= :id")
    Cart findById(@Bind("id") String id);

    @SqlQuery("SELECT* FROM `cart`")
    List<Cart> list();


    @SqlUpdate("insert into cart (id,customer_id,total_price,create_at,update_at) values (:id,:customerId,:totalPrice,now(),now())")
    int insert(@BindBean Cart cart);

    @SqlQuery("select* from `cart` where customer_id =:customerId_")
    String getId(@Bind("customerId") String customerId);

    @SqlQuery("select* from `cart` where customer_id=:customerId")
    Cart getCartByUserId(@Bind("customerId") String customerId);

    @SqlUpdate("update cart set id = :id,customer_id = :customerId,total_price = :totalPrice,create_at = now(),update_at = now()where id = :id")
    int update(@BindBean Cart cart);


    @SqlUpdate("DELETE FROM `cart` WHERE id=:id")
    int delete(@Bind("id") String id);


}
