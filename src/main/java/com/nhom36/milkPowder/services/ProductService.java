package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.Discount;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.Supplier;
import com.nhom36.milkPowder.dao.CategoryDAO;
import com.nhom36.milkPowder.dao.DiscountDAO;
import com.nhom36.milkPowder.dao.ProductDAO;
import com.nhom36.milkPowder.dao.SupplierDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    private static ProductService instance = null;
    Jdbi connect = JDBIConnector.get();

    public ProductService() {
    }

    public static ProductService getInstance() {
        if (instance == null)
            instance = new ProductService();
        return instance;
    }

    public List<Product> list() {
        List<Product> products = connect.withExtension(ProductDAO.class, handle -> handle.list());
        return products.stream().map(product -> mapOtherBean(product)).collect(Collectors.toList());
    }

    public Product findById(String id) {
        return connect.withExtension(ProductDAO.class, handle -> handle.findById(id));
    }


    public List<Product> findByCategory(String CategoryId) {
        return connect.withExtension(ProductDAO.class, handle -> handle.getProductByCategory(CategoryId));
    }

    public int updateProduct(Product product) {
        return connect.withExtension(ProductDAO.class, handle -> handle.update(product));
    }

    public int delete(int parseInt) {
        return connect.withExtension(ProductDAO.class, handle -> handle.delete(parseInt));
    }

    private Product mapOtherBean(Product product) {
        if (product == null) {
            return new Product();
        }
        Category category = connect.withExtension(CategoryDAO.class, handle -> handle.getCategoryById(product.getCategoryId()));
        Supplier supplier = connect.withExtension(SupplierDAO.class, handle -> handle.getSupplierById(product.getSupplierId()));
        Discount discount = connect.withExtension(DiscountDAO.class, handle -> handle.getDiscountById(product.getDiscountId()));
        product.setCategory(category);
        product.setSupplier(supplier);
        product.setDiscount(discount);
        return product;
    }

    public void insert(Product product) {
connect.withExtension(ProductDAO.class, handle -> handle.insert(product));

    }
}
