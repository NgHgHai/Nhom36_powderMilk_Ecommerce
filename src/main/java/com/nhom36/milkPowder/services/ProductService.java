package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.*;
import com.nhom36.milkPowder.dao.CategoryDAO;
import com.nhom36.milkPowder.dao.DiscountDAO;
import com.nhom36.milkPowder.dao.ProductDAO;
import com.nhom36.milkPowder.dao.SupplierDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;

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
        return jdbi.withExtension(ProductDAO.class,handle -> handle.getProductByCategoryId(id)).stream().map(Product -> fullProduct(Product)).collect(Collectors.toList());
    }

    public List<Product> find5productByCategory(String id) {
        return jdbi.withExtension(ProductDAO.class,handle -> handle.get5ProductByCategoryId(id)).stream().map(Product -> fullProduct(Product)).collect(Collectors.toList());
    }

    public String getImgbyProductId(String id){
        return jdbi.withExtension(ProductDAO.class,handle -> handle.getLinkImageByProductId(id));
    }

    public List<Product> getProduct(String txtSearch){
        return jdbi.withExtension(ProductDAO.class,handle -> handle.getProduct(txtSearch));
    }

    public List<Product> sortByPrice() {
        return jdbi.withExtension(ProductDAO.class,handle -> handle.sortByPrice());
    }


    public void updateProductInventory(String id, int i) {
        jdbi.useExtension(ProductDAO.class, dao -> dao.updateProductInventory(id,i));
    }
   public List<Product> getProductbyText(String txtSearch) {
       return jdbi.withExtension(ProductDAO.class, dao -> dao.getProduct("%"+txtSearch+"%"));
   }
   public static void main(String[] args) {

        for(Product product: new ProductService().getProductbyText("ăn kiêng")){
            System.out.println(product);
        }
    }

    public ProductCart getproductCartById(String id) {

            return jdbi.withExtension(ProductDAO.class, dao -> dao.getProductCartById(id));
    }
}