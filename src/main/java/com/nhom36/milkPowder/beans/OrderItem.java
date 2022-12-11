package com.nhom36.milkPowder.beans;

import java.util.Objects;

public class OrderItem {
    private Product product;
    private int quantity;
    private double price;
    private String productId;
    private String orderId;

    public OrderItem() {
    }

    public OrderItem(Product product, int quantity, double price, String productId, String orderId) {
        this.product = product;
        this.quantity = quantity;
        this.price = price;
        this.productId = productId;
        this.orderId = orderId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrderItem orderItem = (OrderItem) o;
        return quantity == orderItem.quantity && Double.compare(orderItem.price, price) == 0 && Objects.equals(product, orderItem.product) && Objects.equals(productId, orderItem.productId) && Objects.equals(orderId, orderItem.orderId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(product, quantity, price, productId, orderId);
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    @Override
    public String toString() {
        return "OrderItem{" +
                "product=" + product +
                ", quantity=" + quantity +
                ", price=" + price +
                ", productId='" + productId + '\'' +
                ", orderId='" + orderId + '\'' +
                '}';
    }
}
