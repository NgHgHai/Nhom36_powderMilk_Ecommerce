package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Supplier;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Supplier.class)
public interface SupplierDAO {

    @SqlQuery("select * from supplier")
    List<Supplier> list();
    @SqlQuery("select * from supplier where id = :supplierId")
    Supplier getSupplierById(@Bind("supplierId") String supplierId);

    @SqlUpdate("delete from supplier where id=:id")
    int delete(@Bind("id") String id);

    @SqlUpdate("INSERT INTO `supplier`(`id`, `name`, `address`, `email`, `phone`, `create_at`, `update_at`) VALUES (:id, :name, :address, :email, :phone,now(),now())")
    int insert(@BindBean Supplier supplier);

    @SqlUpdate("UPDATE `supplier` SET `name`=:name,`address`=:address,`email`=:email,`phone`=:phone,`update_at`=now() WHERE `id`=:id")
    int update(@BindBean Supplier supplier);
}
