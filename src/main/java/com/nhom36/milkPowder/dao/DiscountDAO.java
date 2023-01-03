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
    Discount getDiscountById(@Bind("discountId") String discountId);

    @SqlUpdate("insert into discount (id, name,desc, discount_percent, active, start_at, finish_at, create_at, update_at) values (:id, :name,:desc, :discountPercent, :active, :startAt, :finishAt, now(), now())")
    int insery(@BindBean Discount discount);

    @SqlUpdate("update discount set name = :name, desc = :desc, discount_percent = :discountPercent, active = :active, start_at = :startAt, finish_at = :finishAt, update_at = now() where id = :id")
    int update(@BindBean Discount discount);

    @SqlUpdate("delete from discount where id = :id")
    int delete(@Bind("id") String id);


}
