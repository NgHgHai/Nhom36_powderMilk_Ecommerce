package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Discount {
    private String id;
    private String discount_name;
    private String desc;
    private double discountPercent;
    private int active;
    private LocalDateTime startAt;
    private LocalDateTime finishAt;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Discount() {
    }

    public Discount(String id, String discount_name, String desc, double discountPercent, int active, LocalDateTime startAt, LocalDateTime finishAt, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.discount_name = discount_name;
        this.desc = desc;
        this.discountPercent = discountPercent;
        this.active = active;
        this.startAt = startAt;
        this.finishAt = finishAt;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public String getId() {
        return id;
    }

    public String getDiscount_name() {
        return discount_name;
    }

    public String getDesc() {
        return desc;
    }

    public double getDiscountPercent() {
        return discountPercent;
    }

    public int getActive() {
        return active;
    }

    public LocalDateTime getStartAt() {
        return startAt;
    }

    public LocalDateTime getFinishAt() {
        return finishAt;
    }

    public LocalDateTime getCreateAt() {
        return createAt;
    }

    public LocalDateTime getUpdateAt() {
        return updateAt;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDiscount_name(String discount_name) {
        this.discount_name = discount_name;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public void setDiscountPercent(double discountPercent) {
        this.discountPercent = discountPercent;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public void setStartAt(LocalDateTime startAt) {
        this.startAt = startAt;
    }

    public void setFinishAt(LocalDateTime finishAt) {
        this.finishAt = finishAt;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Discount{" +
                "id='" + id + '\'' +
                ", discount_name='" + discount_name + '\'' +
                ", desc='" + desc + '\'' +
                ", discountPercent=" + discountPercent +
                ", active=" + active +
                ", startAt=" + startAt +
                ", finishAt=" + finishAt +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Discount discount = (Discount) o;
        return Double.compare(discount.discountPercent, discountPercent) == 0 && active == discount.active && Objects.equals(id, discount.id) && Objects.equals(discount_name, discount.discount_name) && Objects.equals(desc, discount.desc) && Objects.equals(startAt, discount.startAt) && Objects.equals(finishAt, discount.finishAt) && Objects.equals(createAt, discount.createAt) && Objects.equals(updateAt, discount.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, discount_name, desc, discountPercent, active, startAt, finishAt, createAt, updateAt);
    }
}
