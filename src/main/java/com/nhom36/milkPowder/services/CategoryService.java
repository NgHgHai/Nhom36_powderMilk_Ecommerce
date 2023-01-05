package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.dao.CategoryDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CategoryService {
    Jdbi jdbi = JDBIConnector.get();

    public List<Category> getAll() {
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.getAllCategory());
    }

    public Category getById(String id) {
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.getCategoryById(id));
    }

    public void insert(Category category) {
        jdbi.useExtension(CategoryDAO.class, dao -> dao.insertCategory(category));
    }

    public void update(Category category) {
        jdbi.useExtension(CategoryDAO.class, dao -> dao.updateCategory(category));
    }

    public void delete(String id) {
        jdbi.useExtension(CategoryDAO.class, dao -> dao.deleteCategory(id));
    }

    public List<Category> getAllCategory() {
        return jdbi.withExtension(CategoryDAO.class, dao -> dao.getAllCategory());
    }
}
