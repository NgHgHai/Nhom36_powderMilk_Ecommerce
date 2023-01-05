package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Category;
//import com.nhom36.milkPowder.beans.NewCategory;
import com.nhom36.milkPowder.dao.CategoryDao;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CategoryService {
    Jdbi jdbi = JDBIConnector.get();

    public List<Category> getAll() {
        return jdbi.withExtension(CategoryDao.class, dao -> dao.getAllCategory());

    }

    public Category getById(int id) {
        return jdbi.withExtension(CategoryDao.class, dao -> dao.getCategoryById(id));
    }

    public void insert(Category category) {
        jdbi.useExtension(CategoryDao.class, dao -> dao.insertCategory(category));
    }

    public void update(Category category) {
        jdbi.useExtension(CategoryDao.class, dao -> dao.updateCategory(category));
    }

    public void delete(int id) {
        jdbi.useExtension(CategoryDao.class, dao -> dao.deleteCategory(id));
    }

}
