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
    Jdbi jdbi = JDBIConnector.get();
 public static ProductService instance = null;
    public static ProductService getInstance() {
        if(instance==null){
            instance = new ProductService();
        }
        return instance;
    }

    public List<Product> getAll() {
        List<Product> products = jdbi.withExtension(ProductDAO.class, dao -> dao.list());
        return products.stream().map(Product -> fullProduct(Product)).collect(Collectors.toList());
    }

    public Product getById(String id) {
        return fullProduct(jdbi.withExtension(ProductDAO.class, dao -> dao.getProductById(id)));
    }

    public void insert(Product product) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.insertProduct(product));
    }

    public void updateProduct(Product product) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.updateProduct(product));
    }

    public void delete(String id) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.deleteProduct(id));
    }

    private Product fullProduct(Product product) {
        if (product == null)
            return null;
       Category category = jdbi.withExtension(CategoryDAO.class, dao -> dao.getCategoryById(product.getCategoryId()));
        product.setCategory(category);
        Supplier supplier = jdbi.withExtension(SupplierDAO.class, dao -> dao.getSupplierById(product.getSupplierId()));
        product.setSupplier(supplier);
        Discount discount = jdbi.withExtension(DiscountDAO.class, dao -> dao.getDiscountById(product.getDiscountId()));
        product.setDiscount(discount);
        return product;
    }

    public List<Product> findByCategory(String id) {
        return jdbi.withExtension(ProductDAO.class,handle -> handle.getProductByCategoryId(id));
    }

    public static void main(String[] args) {
//        Product product = new Product();
//        product.setId("1");
//        product.setName("Sữa tắm");
//        product.setPrice(10000.00);
//        product.setDesc("Sữa tắm");
//        product.setImgDisplay("img1");
//        product.setWeightAmount(100.0);
//        product.setWeightUnits("ml");
//        product.setActive(1);
//        product.setInventory(100);
//        product.setSupplierId("1");
//        product.setCategoryId("1");
//        product.setDiscountId("1");
//        Supplier s = new Supplier();
//        s.setName("anpha gold");
//        product.setSupplier(s);

//        System.out.println(product);
//        new ProductService().insert(product);
//        System.out.println(new ProductService().getById("1"));
        System.out.println(new ProductService().getAll());
//        new ProductService().delete("1");
//
    }
}