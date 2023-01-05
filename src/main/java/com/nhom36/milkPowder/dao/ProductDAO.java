package com.nhom36.milkPowder.dao;
import com.nhom36.milkPowder.beans.Product;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductDAO {
    @SqlQuery("select * from product where id = :id")
    Product getProductById(@Bind("id") String id);

    @SqlQuery("select * from product")
    List<Product> list();

    @SqlUpdate("insert into product (name, category_id) values (:name,:categoryId)")
    void insertProduct(@BindBean Product product);

    @SqlUpdate("update product set name = :name, category_id = :categoryId where id = :id")
    void updateProduct(@BindBean Product product);

    @SqlUpdate("delete from product where id = :id")
    void deleteProduct(@Bind("id") String id);
    @SqlQuery("select * from product where category_id= : categoryId")
    List<Product> getProductByCategoryId(@Bind("categoryId") String category_id);
}
