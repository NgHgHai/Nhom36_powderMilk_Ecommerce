package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Order {
    private String id;
    private String userId;
    private String shippingAddress;
    private String shippingPhone;
    private String shippingEmail;
    private String shippingName;
    private double shippingFee;
    private double total;
    private int status;


    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Order() {
    }


    public Order(String id, String userId, String shippingAddress, String shippingPhone, String shippingEmail, String shippingName, double shippingFee, double total, int status, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.userId = userId;
        this.shippingAddress = shippingAddress;
        this.shippingPhone = shippingPhone;
        this.shippingEmail = shippingEmail;
        this.shippingName = shippingName;
        this.shippingFee = shippingFee;
        this.total = total;
        this.status = status;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public void setShippingName(String shippingName) {
        this.shippingName = shippingName;
    }



    public String getShippingName() {
        return shippingName;
    }

    public String getId() {
        return id;
    }

    public String getUserId() {
        return userId;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public String getShippingPhone() {
        return shippingPhone;
    }

    public String getShippingEmail() {
        return shippingEmail;
    }

    public double getShippingFee() {
        return shippingFee;
    }

    public double getTotal() {
        return total;
    }

    public int getStatus() {
        return status;
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

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public void setShippingPhone(String shippingPhone) {
        this.shippingPhone = shippingPhone;
    }

    public void setShippingEmail(String shippingEmail) {
        this.shippingEmail = shippingEmail;
    }

    public void setShippingFee(double shippingFee) {
        this.shippingFee = shippingFee;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }
    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", userId='" + userId + '\'' +
                ", shippingAddress='" + shippingAddress + '\'' +
                ", shippingPhone='" + shippingPhone + '\'' +
                ", shippingEmail='" + shippingEmail + '\'' +
                ", shipping_name='" + shippingName + '\'' +
                ", shippingFee=" + shippingFee +
                ", total=" + total +
                ", status=" + status +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return Double.compare(order.shippingFee, shippingFee) == 0 && Double.compare(order.total, total) == 0 && status == order.status && Objects.equals(id, order.id) && Objects.equals(userId, order.userId) && Objects.equals(shippingAddress, order.shippingAddress) && Objects.equals(shippingPhone, order.shippingPhone) && Objects.equals(shippingEmail, order.shippingEmail) && Objects.equals(shippingName, order.shippingName) && Objects.equals(createAt, order.createAt) && Objects.equals(updateAt, order.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userId, shippingAddress, shippingPhone, shippingEmail, shippingName, shippingFee, total, status, createAt, updateAt);
    }
}
