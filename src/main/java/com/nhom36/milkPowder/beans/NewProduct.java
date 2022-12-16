package com.nhom36.milkPowder.beans;

public class NewProduct {
    int id;
    String name;
    int categoryId;

    NewCategory category;

    public NewProduct() {
    }

    public NewProduct(int id, String name, int categoryId) {
        this.id = id;
        this.name = name;
        this.categoryId = categoryId;
    }

    public NewProduct(int id, String name, int categoryId, NewCategory category) {
        this.id = id;
        this.name = name;
        this.categoryId = categoryId;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public NewCategory getCategory() {
        return category;
    }

    public void setCategory(NewCategory category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "NewProduct{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", categoryId=" + categoryId +
                ", category=" + category +
                '}';
    }
}
