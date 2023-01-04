package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Cart;
import com.nhom36.milkPowder.dao.CartDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

public class CartService {
    Jdbi jdbi = JDBIConnector.get();
    public CartService(){}
    public Cart getCartByUserId(String id) {
        return jdbi.withExtension(CartDAO.class, dao -> dao.getCartByUserId(id));

    }

}
