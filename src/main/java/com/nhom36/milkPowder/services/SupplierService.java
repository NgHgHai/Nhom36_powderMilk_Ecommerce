package com.nhom36.milkPowder.services;


import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.Supplier;
import com.nhom36.milkPowder.dao.ProductDAO;
import com.nhom36.milkPowder.dao.SupplierDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class SupplierService {
    Jdbi jdbi = JDBIConnector.get();
    public static ProductService instance = null;

    public static ProductService getInstance() {
        if(instance==null){
            instance = new ProductService();
        }
        return instance;
    }

    public List<Supplier> getAll() {
        return  jdbi.withExtension(SupplierDAO.class, dao -> dao.list());

    }
    public Supplier getById(String id) {
        return jdbi.withExtension(SupplierDAO.class, dao -> dao.getSupplierById(id));
    }

    public void insert(Supplier supplier) {
        jdbi.useExtension(SupplierDAO.class, dao -> dao.insert(supplier));
    }

    public void updateProduct(Supplier supplier) {
        jdbi.useExtension(SupplierDAO.class, dao -> dao.update(supplier));
    }

    public void delete(String id) {
        jdbi.useExtension(SupplierDAO.class, dao -> dao.delete(id));
    }
//    public int getNumProductByIdSuppier(String id){ return jdbi.withExtension(SupplierDAO.class, dao -> dao.getNumProdByIdSupp(id)); }


}
