package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Cart;
import com.nhom36.milkPowder.beans.CartItem;
import com.nhom36.milkPowder.beans.User;
import com.nhom36.milkPowder.dao.CartDAO;
import com.nhom36.milkPowder.dao.CartItemDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import com.nhom36.milkPowder.util.StringUtil;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CartService {
    Jdbi jdbi = JDBIConnector.get();

    public CartService() {
    }

    public Cart getCartByUserId(String id) {
        Cart cart = jdbi.withExtension(CartDAO.class, dao -> dao.getCartByUserId(id));
        if (cart == null) {
            cart = new Cart();
            cart.setId(StringUtil.getIDWithLength(10));
            cart.setCustomerId(id);
            cart.setTotalPrice(0);
            createCart(cart);
        }
        return mapCart(cart);
    }

    private Cart mapCart(Cart cart) {
        List<CartItem> cartItems = jdbi.withExtension(CartItemDAO.class, dao -> dao.findByCartId(cart.getId()));
        cart.setCartItemList(cartItems);
        return cart;
    }

    private void createCart(Cart cart) {
        jdbi.withExtension(CartDAO.class, dao -> dao.insert(cart));
    }

    public void updateOrderItem(String cartId, String productId, int quantity) {
        jdbi.useExtension(CartItemDAO.class, dao -> {
            CartItem cartItem = dao.findByCartIdAndProductId(cartId, productId);
            if (cartItem == null) {
                cartItem = new CartItem();
                cartItem.setCartId(cartId);
                cartItem.setProductId(productId);
                cartItem.setQuantity(quantity);
                dao.insert(cartItem);
            } else {
                cartItem.setQuantity(quantity);
                dao.update(cartItem);
            }
        });
    }

    public void removeProduct(String userId, String productId) {
        jdbi.useExtension(CartItemDAO.class, dao -> {
            Cart cart = getCartByUserId(userId);
            dao.delete(cart.getId(), productId);
        });
    }
}
