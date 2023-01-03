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
    @SqlQuery(value = "SELECT* FROM `cart` where id=: id")
    Cart findById(@Bind("id") String id);

    @SqlQuery("SELECT* FROM `cart`")
    List<Cart> list();


    @SqlUpdate("INSERT INTO `cart`(`id`, `product_id`, `quantity`, `create_at`, `update_at`) VALUES (:id,:productId,:quantity,now(),now())")
    int insert(Cart cart);

    @SqlQuery("select* from `cart` where customer_id =:customerId_")
    String getId(@Bind("customerId_") String customerId_);
    @SqlQuery("select* from `cart` where customer_id=:customerId")
    List<Cart> findByUserId(@Bind("userId") String userId);

    @SqlUpdate("UPDATE `cart` SET `quantity`=:quantity,`update_at`=now() WHERE id=:id")
    int update(@BindBean Cart cart);



    @SqlUpdate("DELETE FROM `cart` WHERE id=:id")
    int delete(@Bind("id") String id);


}
