package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.OrderItem;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.dao.OrderItemDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

public class OrderItemsService {
    Jdbi jdbi = JDBIConnector.get();
    public static OrderItemsService instance = null;

    public static OrderItemsService getInstance() {
        if (instance == null) {
            instance = new OrderItemsService();
        }
        return instance;
    }
    public void insert(OrderItem orderItem){
        jdbi.useExtension(OrderItemDAO.class,dao-> dao.insert(orderItem));
    }
}
