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
    Product getProductById(@Bind("id") String id);


    @SqlUpdate("delete from Product where id = :id")
    int deleteProduct(@Bind("id") String id);


    @SqlUpdate("INSERT INTO `Product`(`id`,`name`,`price`,`desc`,`img_display`," +
            "`weight_amount`,`weight_units`,`active`,`inventory`,`supplier_id`,`category_id`,`discount_id`,`create_at`,`update_at`) " +
            "VALUES (:id,:name,:price,:desc,:imgDisplay,:weightAmount,:weightUnits,:active,:inventory,:supplierId,:categoryId,:discountId,now(),now())")
    int insertProduct(@BindBean Product product);


    @SqlUpdate("UPDATE `Product` SET `name`=:name,`price`=:price,`desc`=:desc,`img_display`=:imgDisplay," +
            "`weight_amount`=:weightAmount,`active`=:active,`inventory`=:inventory,`supplier_id`=:supplierId,`category_id`=:categoryId,`discount_id`=:discountId,`update_at`=now() WHERE id=:id")
    int updateProduct(@BindBean Product product);

    @SqlQuery("select * from Product where category_id = :categoryId")
    List<Product> getProductByCategoryId(@Bind("categoryId") String categoryId);

    @SqlQuery("select * from Product where supplier_id = :supplierId")
    List<Product> getProductBySupplier(@Bind("supplierId") String supplierId);

    @SqlQuery("select * from Product order by price asc ")
    ArrayList<Product> allPriceUp();

    @SqlUpdate("delete from Product where id = :id")
    int delete(@Bind("id") int parseInt);
}
