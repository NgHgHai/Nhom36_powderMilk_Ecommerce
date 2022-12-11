package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Category {

    private String id;
    private String name;
    private String desc;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
    public Category(){}

    public Category(String id, String name, String desc, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Category category = (Category) o;
        return Objects.equals(id, category.id) && Objects.equals(name, category.name) && Objects.equals(desc, category.desc) && Objects.equals(createAt, category.createAt) && Objects.equals(updateAt, category.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, desc, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}