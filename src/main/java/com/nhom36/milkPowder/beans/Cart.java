package com.nhom36.milkPowder.beans;

import com.nhom36.milkPowder.services.OrderItemsService;
import com.nhom36.milkPowder.services.ProductService;
import com.nhom36.milkPowder.util.StringUtil;

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
        System.out.println(idProd+"  "+ quantity);
        if (carts.containsKey(idProd)) {
            int v = carts.get(idProd) + quantity;
            carts.replace(idProd, v);
        } else {
            carts.put(idProd, quantity);
        }
        System.out.println("da them san pham " + idProd);
    }

    public void add1Prod(String idProd) {
        addProd(idProd, 1);
        System.out.println("da them 1 san pham " + idProd);
    }

    public void deleteProd(String idProd, int quantity) {

            int v = carts.get(idProd) - quantity;
            carts.replace(idProd, v);

        System.out.println("da xoa san pham " + idProd);
    }

    public void delete1Prod(String idProd) {
        deleteProd(idProd, 1);
        System.out.println("da xoa 1 san pham " + idProd);
    }

    public Order checkout() {
        OrderItemsService orderItemsService = new OrderItemsService();
        ProductService productService= new ProductService();
        Order order = new Order();
        String id = StringUtil.getIDWithLength(10);
        Set<String> key = carts.keySet();
        for (String k : key) {
            OrderItem orderItem = new OrderItem();
            orderItem.setOrderId(id);
            orderItem.setProductId(k);
            orderItem.setQuantity(carts.get(k));
            orderItemsService.insert(orderItem);
            Product product = productService.getById(k);
            productService.updateProductInventory(product.getId(), product.getInventory() - carts.get(k));

        }

        order.setId(id);
        return order;
    }


    public double getTotalPrice() {
        double total = 0.0;
        ProductService productService = new ProductService();
        Set<String> key = carts.keySet();
        for (String k : key) {
            Product p = productService.getById(k);
            total += p.getPrice() * carts.get(k);
        }
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


}
