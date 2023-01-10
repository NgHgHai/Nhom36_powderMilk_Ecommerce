package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Category;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Category.class)
public interface CategoryDAO {
    @SqlQuery("select * from category where id = :id")
    Category getCategoryById(@Bind("id") String id);

    @SqlQuery("select * from category order by `desc` asc ")
    List<Category> getAllCategory();

    @SqlUpdate("INSERT INTO `category`(`id`, `name`, `desc`, `create_at`, `update_at`) VALUES (:id,:name,:desc,now(),now())")
    void insertCategory(@BindBean Category category);

    @SqlUpdate("UPDATE `category` SET `name`=:name,`desc`=:desc,`update_at`=now() WHERE id = :id")
    void updateCategory(@BindBean  Category category);

    @SqlUpdate("delete from category where id = :id")
    void deleteCategory(@Bind("id") String id);


}
