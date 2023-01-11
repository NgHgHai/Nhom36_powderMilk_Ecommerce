package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.*;

public class Cart {

    private Map<String, Integer> carts = new HashMap<>();
    private Double totalPrice;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;


    public Cart() {
    }


    public Cart(Map<String, Integer> carts, Double totalPrice, LocalDateTime createAt, LocalDateTime updateAt) {
        this.carts = carts;
        this.totalPrice = totalPrice;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public void addProd(String idProd, int quantity) {
        int v = carts.get(idProd) + quantity;
        if (carts.containsKey(idProd)) {
            carts.replace(idProd,v);
        }else {
            carts.put(idProd,v);
        }
    }
    public void add1Prod(String idProd){
        addProd(idProd,1);
    }
    public void deleteProd(String idProd, int quantity){
        int v = carts.get(idProd) - quantity;
        if (carts.containsKey(idProd)) {
            carts.replace(idProd,v);
        }else {
            carts.put(idProd,v);
        }
    }


    public double getTotalPrice() {
        double total = 0.0;
        return total;
    }

    public int getTotalQuantity() {
//        int total = 0;
        return carts.size();
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public LocalDateTime getCreateAt() {
        return createAt;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public LocalDateTime getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }


    public void setCartItemList(List<CartItem> cartItems) {

    }

    public Map<String, Integer> getCarts() {
        return carts;
    }
}