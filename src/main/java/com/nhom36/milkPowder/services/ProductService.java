package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.NewCategory;
import com.nhom36.milkPowder.beans.NewProduct;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.dao.CategoryDao;
import com.nhom36.milkPowder.dao.ProductDao;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    Jdbi jdbi = JDBIConnector.get();

    public List<NewProduct> getAll() {
        List<NewProduct> products = jdbi.withExtension(ProductDao.class, dao -> dao.getAllProduct());
        return products.stream().map(newProduct -> fullProduct(newProduct)).collect(Collectors.toList());
    }

    public NewProduct getById(int id) {
        return fullProduct(jdbi.withExtension(ProductDao.class, dao -> dao.getProductById(id)));
    }

    public void insert(NewProduct product) {
        jdbi.useExtension(ProductDao.class, dao -> dao.insertProduct(product));
    }

    public void update(NewProduct product) {
        jdbi.useExtension(ProductDao.class, dao -> dao.updateProduct(product));
    }

    public void delete(int id) {
        jdbi.useExtension(ProductDao.class, dao -> dao.deleteProduct(id));
    }

    private NewProduct fullProduct(NewProduct product) {
        if (product == null)
            return null;
        NewCategory category = jdbi.withExtension(CategoryDao.class, dao -> dao.getCategoryById(product.getCategoryId()));
        product.setCategory(category);
        return product;
    }
}