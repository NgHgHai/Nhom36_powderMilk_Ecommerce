package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class ProductCart {

    private  Product product;
    private int quantity;

    public ProductCart() {

    }
    public ProductCart(Product product,int quantity){
        product = new Product();
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProductCart that = (ProductCart) o;
        return quantity == that.quantity && Objects.equals(product, that.product);
    }

    @Override
    public int hashCode() {
        return Objects.hash(product, quantity);
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
    public void addQuantity(int quantity){
        this.quantity += quantity;
    }
    public void subQuantity(int quantity){
        this.quantity -= quantity;
    }
    public String getId(){
        return product.getId();
    }

    @Override
    public String toString() {
        return "ProductCart{" +
                "product=" + product +
                ", quantity=" + quantity +
                '}';
    }
}
