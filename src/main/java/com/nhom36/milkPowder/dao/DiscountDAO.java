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

    @SqlUpdate("insert into discount (id, discount_name,desc, discount_percent, active, start_at, finish_at, create_at, update_at) values (:id, :discountName,:desc, :discountPercent, :active, :startAt, :finishAt, now(), now())")
    int insert(@BindBean Discount discount);

    @SqlUpdate("update discount set discount_name = :discountName, desc = :desc, discount_percent = :discountPercent, active = :active, start_at = :startAt, finish_at = :finishAt, update_at = now() where id = :id")
    int update(@BindBean Discount discount);

    @SqlUpdate("delete from discount where id = :id")
    int delete(@Bind("id") String id);


}
