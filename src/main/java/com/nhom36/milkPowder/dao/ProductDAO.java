package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Product;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.ArrayList;
import java.util.List;

@RegisterBeanMapper(Product.class)
public interface ProductDAO {
    @SqlQuery("select * from Product")
    List<Product> list();

    @SqlQuery("select * from Product where id = :id")
    Product getProduct(@Bind("id") String id);

    @SqlQuery("select * from Product where id = :id")
    Product findById(@Bind("id") String id);



    @SqlUpdate("delete from Product where id = :id")
    int deleteProduct(@Bind("id") String id);




    @SqlUpdate("INSERT INTO `Product`(`id`,`name`,`price`,`minSaletime`,`maxSaletime`,`desc`,`img_display`," +
            "`weight_amount`,`weight_unit`,`active`,`inventory`,`supplier_id`,`category_id`,`discount_id`.`create_at`,`update_at`) " +
            "VALUES (:id,:name,:price,:minSaletime,:maxSaletime,:desc,:img_display,:weight_amount,:weight_unit,:active,:inventory,:supplier_id,:category_id,:discount_id,now(),now())")
    int insert(@BindBean Product product);

    @SqlUpdate("UPDATE `Product` SET `name`=:name,`price`=:price,`minSaletime`=:minSaletime,`maxSaletime`=:maxSaletime,`desc`=:desc,`img_display`=:img_display," +
            "`weight_amount`=:weight_amount,`weight_unit`=:weight_unit,`active`=:active,`inventory`=:inventory,`supplier_id`=:supplier_id,`category_id`=:category_id,`discount_id`=:discount_id,`update_at`=now() WHERE id=:id")
    int update(@BindBean Product product);

    @SqlQuery("select * from Product where category_id = :categoryId")
    List<Product> getProductByCategory(@Bind("categoryId") String categoryId);

    @SqlQuery("select * from Product where supplier_id = :supplierId")
    List<Product> getProductBySupplier(@Bind("supplierId") String supplierId);

    @SqlQuery("select * from Product order by price asc ")
    ArrayList<Product> allPriceUp();

}
