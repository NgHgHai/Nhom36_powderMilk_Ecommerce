package com.nhom36.milkPowder.beans;

public class CartItem {
  private Product product;
    private int quantity;
    private double price;
    private String productId;
    private String cartId;
    public CartItem(){}

    public CartItem(String cartId, String productId, int quantity, double price){
        this.cartId = cartId;
        this.productId = productId;
        this.quantity = quantity;
        this.price = price;
    }
    public CartItem(Product product, int quantity, double price) {//su dung cho hien thi san pham trong gio hang
        this.product = product;
        this.quantity = quantity;
        this.price = price;
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

    public String getCartId() {
        return cartId;
    }

    public void setCartId(String cartId) {
        this.cartId = cartId;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "product=" + product +
                ", quantity=" + quantity +
                ", price=" + price +
                '}';
    }
}
