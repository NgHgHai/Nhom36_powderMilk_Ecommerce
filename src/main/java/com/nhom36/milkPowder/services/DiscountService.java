package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Discount;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.dao.DiscountDAO;
import com.nhom36.milkPowder.dao.ProductDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class DiscountService {
    public DiscountService(){}
    Jdbi jdbi = JDBIConnector.get();
    public List<Discount> getAllDiscount() {
        return jdbi.withExtension(DiscountDAO.class, dao -> dao.list());
    }
    public Discount getById(String id) {
        return jdbi.withExtension(DiscountDAO.class, dao -> dao.getDiscountById(id));
    }
    public int insert(Discount discount) {
        return jdbi.withExtension(DiscountDAO.class, dao -> dao.insert(discount));
    }
    public int update(Discount discount) {
        return jdbi.withExtension(DiscountDAO.class, dao -> dao.update(discount));
    }
    public void delete(String id) {
        jdbi.useExtension(DiscountDAO.class, dao -> dao.delete(id));
    }

    public static void main(String[] args) {
        System.out.println( new DiscountService().getById("231") );
    }
}
