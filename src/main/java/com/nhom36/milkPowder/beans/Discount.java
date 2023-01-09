package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;

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

    public void setId(String id) {
        this.id = id;
    }

    public String getDiscountName() {
        return discount_name;
    }

    public void setDiscountName(String discount_name) {
        this.discount_name = discount_name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public double getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(double discountPercent) {
        this.discountPercent = discountPercent;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public LocalDateTime getStartAt() {
        return startAt;
    }

    public void setStartAt(LocalDateTime startAt) {
        this.startAt = startAt;
    }

    public LocalDateTime getFinishAt() {
        return finishAt;
    }

    public void setFinishAt(LocalDateTime finishAt) {
        this.finishAt = finishAt;
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

    @Override
    public String toString() {
        return "Discount{" +
                "id='" + id + '\'' +
                ", name='" + discount_name + '\'' +
                ", desc='" + desc + '\'' +
                ", discountPercent=" + discountPercent +
                ", active=" + active +
                ", startAt=" + startAt +
                ", finishAt=" + finishAt +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }



}
