package com.nhom36.milkPowder.model;

import java.time.LocalDateTime;
import java.util.Objects;

public class Product {
    private String id;
    private String name;
    private double price;
    private int minSaletime;
    private int maxSaletime;
    private String desc;
    private String imgDisplay;
    private double weightAmount;
    private String weightUnits;
    private int active;
    private int inventory; // hang ton kho
    private String supplierId;
    private String CategoryId;
    private Supplier supplier;
    private Category category;
    private Discount discount;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Product() {

    }

    public Product(String id, String name, double price, int minSaletime, int maxSaletime, String desc, String imgDisplay, double weightAmount, String weightUnits, int active, int inventory, String supplierId, String categoryId, Supplier supplier, Category category, Discount discount, LocalDateTime createAt, LocalDateTime updateAt) {

        this.id = id;
        this.name = name;
        this.price = price;
        this.minSaletime = minSaletime;
        this.maxSaletime = maxSaletime;
        this.desc = desc;
        this.imgDisplay = imgDisplay;
        this.weightAmount = weightAmount;
        this.weightUnits = weightUnits;
        this.active = active;
        this.inventory = inventory;
        this.supplierId = supplierId;
        this.CategoryId = categoryId;
        this.supplier = supplier;
        this.category = category;
        this.discount = discount;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Double.compare(product.price, price) == 0 && minSaletime == product.minSaletime && maxSaletime == product.maxSaletime && Double.compare(product.weightAmount, weightAmount) == 0 && active == product.active && inventory == product.inventory && Objects.equals(id, product.id) && Objects.equals(name, product.name) && Objects.equals(desc, product.desc) && Objects.equals(imgDisplay, product.imgDisplay) && Objects.equals(weightUnits, product.weightUnits) && Objects.equals(supplierId, product.supplierId) && Objects.equals(CategoryId, product.CategoryId) && Objects.equals(supplier, product.supplier) && Objects.equals(category, product.category) && Objects.equals(discount, product.discount) && Objects.equals(createAt, product.createAt) && Objects.equals(updateAt, product.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, price, minSaletime, maxSaletime, desc, imgDisplay, weightAmount, weightUnits, active, inventory, supplierId, CategoryId, supplier, category, discount, createAt, updateAt);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getMinSaletime() {
        return minSaletime;
    }

    public void setMinSaletime(int minSaletime) {
        this.minSaletime = minSaletime;
    }

    public int getMaxSaletime() {
        return maxSaletime;
    }

    public void setMaxSaletime(int maxSaletime) {
        this.maxSaletime = maxSaletime;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getImgDisplay() {
        return imgDisplay;
    }

    public void setImgDisplay(String imgDisplay) {
        this.imgDisplay = imgDisplay;
    }

    public double getWeightAmount() {
        return weightAmount;
    }

    public void setWeightAmount(double weightAmount) {
        this.weightAmount = weightAmount;
    }

    public String getWeightUnits() {
        return weightUnits;
    }

    public void setWeightUnits(String weightUnits) {
        this.weightUnits = weightUnits;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getCategoryId() {
        return CategoryId;
    }

    public void setCategoryId(String categoryId) {
        CategoryId = categoryId;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Discount getDiscount() {
        return discount;
    }

    public void setDiscount(Discount discount) {
        this.discount = discount;
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
