package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Order {
    private String id;
    private String customerId;
    private double shipPrice;
    private double total;
    private int status;
    private String nameReceiver;
    private String phoneReceiver;
    private String emailReceiver;
    private String addressReceiver;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Order() {
    }

    public Order(String id, String customerId, double shipPrice, double total, int status, String nameReceiver, String phoneReceiver, String emailReceiver, String addressReceiver, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.customerId = customerId;
        this.shipPrice = shipPrice;
        this.total = total;
        this.status = status;
        this.nameReceiver = nameReceiver;
        this.phoneReceiver = phoneReceiver;
        this.emailReceiver = emailReceiver;
        this.addressReceiver = addressReceiver;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public double getShipPrice() {
        return shipPrice;
    }

    public void setShipPrice(double shipPrice) {
        this.shipPrice = shipPrice;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getNameReceiver() {
        return nameReceiver;
    }

    public void setNameReceiver(String nameReceiver) {
        this.nameReceiver = nameReceiver;
    }

    public String getPhoneReceiver() {
        return phoneReceiver;
    }

    public void setPhoneReceiver(String phoneReceiver) {
        this.phoneReceiver = phoneReceiver;
    }

    public String getEmailReceiver() {
        return emailReceiver;
    }

    public void setEmailReceiver(String emailReceiver) {
        this.emailReceiver = emailReceiver;
    }

    public String getAddressReceiver() {
        return addressReceiver;
    }

    public void setAddressReceiver(String addressReceiver) {
        this.addressReceiver = addressReceiver;
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
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return Double.compare(order.shipPrice, shipPrice) == 0 && Double.compare(order.total, total) == 0 && status == order.status && Objects.equals(id, order.id) && Objects.equals(customerId, order.customerId) && Objects.equals(nameReceiver, order.nameReceiver) && Objects.equals(phoneReceiver, order.phoneReceiver) && Objects.equals(emailReceiver, order.emailReceiver) && Objects.equals(addressReceiver, order.addressReceiver) && Objects.equals(createAt, order.createAt) && Objects.equals(updateAt, order.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, customerId, shipPrice, total, status, nameReceiver, phoneReceiver, emailReceiver, addressReceiver, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", customerId='" + customerId + '\'' +
                ", shipPrice=" + shipPrice +
                ", total=" + total +
                ", status=" + status +
                ", nameReceiver='" + nameReceiver + '\'' +
                ", phoneReceiver='" + phoneReceiver + '\'' +
                ", emailReceiver='" + emailReceiver + '\'' +
                ", addressReceiver='" + addressReceiver + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
