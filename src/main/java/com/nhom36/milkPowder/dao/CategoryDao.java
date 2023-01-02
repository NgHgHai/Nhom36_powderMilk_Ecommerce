package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.NewCategory;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(NewCategory.class)
public interface CategoryDao {
    @SqlQuery("select * from category where id = :id")
    NewCategory getCategoryById(@Bind("id") int id);

    @SqlQuery("select * from category")
    List<NewCategory> getAllCategory();

    @SqlUpdate("insert into category (name) values (:name)")
    void insertCategory(@BindBean NewCategory category);

    @SqlUpdate("update category set name = :name where id = :id")
    void updateCategory(@BindBean NewCategory category);

    @SqlUpdate("delete from category where id = :id")
    void deleteCategory(@Bind("id") int id);
}
