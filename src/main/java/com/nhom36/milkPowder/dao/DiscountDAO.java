package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Discount;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Discount.class)
public interface DiscountDAO {
    @SqlQuery("select* from discount")
    List<Discount> list();
    @SqlQuery("select * from discount where id = :id")
    Discount getDiscountById(@Bind("id") String id);

    @SqlUpdate("INSERT INTO `discount`(`id`, `discount_name`, `desc`, `discount_percent`, `active`, `start_at`, `finish_at`, `create_at`, `update_at`) " +
            "VALUES (:id, :discount_name,:desc, :discountPercent, :active, :startAt, :finishAt, now(), now())")
    int insert(@BindBean Discount discount);

    @SqlUpdate("UPDATE `discount` SET `id`=:id,`discount_name`=:discount_name,`desc`=:desc,`discount_percent`=:discountPercent,`active`=:active," +
            "`start_at`=:startAt,`finish_at`=:finishAt,`update_at`=now() WHERE id = :id")

    int update(@BindBean Discount discount);

    @SqlUpdate("delete from discount where id = :id")
    int delete(@Bind("id") String id);


}
