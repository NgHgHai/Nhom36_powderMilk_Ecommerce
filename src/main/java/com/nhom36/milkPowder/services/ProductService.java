package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.NewProduct;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.dao.ProductDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ProductService {
private static ProductService instance = null;
Jdbi connect = JDBIConnector.get();
public ProductService() {}
    public static ProductService getInstance() {
        if (instance == null)
            instance = new ProductService();
        return instance;
    }
    public List<Product> list(){
        List<Product> products = connect.withExtension(ProductDAO.class, handle -> handle.list());
        return products;
    }

    public Product findById(String id){
        return connect.withExtension(ProductDAO.class, handle -> handle.findById(id));
    }


    public void insert(NewProduct product) {
    }

    public int updateProduct(Product product){
     return connect.withExtension(ProductDAO.class, handle -> handle.update(product));
    }

    public void delete(int parseInt) {

    }
}
