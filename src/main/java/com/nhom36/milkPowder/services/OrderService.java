package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Order;
import com.nhom36.milkPowder.dao.OrderDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class OrderService {
    Jdbi jdbi = JDBIConnector.get();
    public static OrderService instance = null;

    public static OrderService getInstance() {
        if (instance == null) {
            instance = new OrderService();
        }
        return instance;
    }

    public  List<Order>  getListOrderByUserId(String id){
        return jdbi.withExtension(OrderDAO.class, dao -> dao.findByUserId(id));
    }

    public static void main(String[] args) {
        System.out.println(new OrderService().getListOrderByUserId("001"));
    }

}
