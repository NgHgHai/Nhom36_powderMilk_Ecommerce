package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.ProductImage;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.ArrayList;
import java.util.List;

@RegisterBeanMapper(ProductImage.class)
public interface ImageProductDAO {
    @SqlQuery(value = "SELECT * FROM `product_images` WHERE id=:id")
    ProductImage findById(@Bind("id") String id);

    @SqlQuery(value = "select link from `product_images` where product_id = :productId")
    List<ProductImage> findByProductId(@Bind("productId") String productId);

    @SqlUpdate(value = "INSERT INTO `product_images`(`id`, `link`, `product_id`, `create_at`, `update_at`) VALUES (:id,:link,:productId,now(),now())")
    int insert(ProductImage productImage);

    @SqlUpdate(value = "DELETE FROM `product_images` WHERE id=:id")
    int delete(@Bind("id") String id);


}
