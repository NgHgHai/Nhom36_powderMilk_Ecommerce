package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.NewProduct;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(NewProduct.class)
public interface ProductDao {
    @SqlQuery("select * from product where id = :id")
    NewProduct getProductById(@Bind("id") int id);

    @SqlQuery("select * from product")
    List<NewProduct> getAllProduct();

    @SqlUpdate("insert into product (name, category_id) values (:name,:categoryId)")
    void insertProduct(@BindBean NewProduct product);

    @SqlUpdate("update product set name = :name, category_id = :categoryId where id = :id")
    void updateProduct(@BindBean NewProduct product);

    @SqlUpdate("delete from product where id = :id")
    void deleteProduct(@Bind("id") int id);

}
