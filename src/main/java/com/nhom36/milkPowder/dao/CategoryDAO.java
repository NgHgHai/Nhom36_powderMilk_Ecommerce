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

    @SqlUpdate("insert into category (name) values (:name)")
    void insertCategory(@BindBean Category category);

    @SqlUpdate("update category set name = :name where id = :id")
    void updateCategory(@BindBean  Category category);

    @SqlUpdate("delete from category where id = :id")
    void deleteCategory(@Bind("id") String id);


}
