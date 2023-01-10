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
    @SqlQuery("select * from order where id = :id")
    Order findById(@Bind("id") String id);

    @SqlQuery("SELECT * FROM `order` WHERE user_id = :userId")
    List<Order> findByUserId(@Bind("userId") String userId);


    @SqlUpdate("INSERT INTO `order`(`id`, `user_id`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_name`, `shipping_fee`, `total_price`, `status`, `create_at`, `update_at`) " +
            "VALUES (:id,:userId,:shippingAddress,:shippingPhone,:shippingEmail,:shippingName,:shippingFee,:total,:status,now(),now())")
    int insert(@BindBean Order order);

    @SqlUpdate("UPDATE `order` SET `id`=:id,`user_id`=:userId,`shipping_address`=:shippingAddress,`shipping_phone`=:shippingPhone,`shipping_email`=:shippingEmail," +
            "`shipping_name`=:shippingName,`shipping_fee`=:shippingFee,`total_price`=:total,`status`=:status,`update_at`=now() WHERE id = :id")
    int update(@BindBean Order order);

}
