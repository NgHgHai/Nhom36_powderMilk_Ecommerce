package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;

public class ImageProduct {
    private String id;
    private String url;
    private String productId;
    private int active;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public ImageProduct() {
    }

    public ImageProduct(String id, String url, String productId, int active,LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.url = url;
        this.productId = productId;
        this.active = active;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
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
        return "ImageProduct{" +
                "id='" + id + '\'' +
                ", url='" + url + '\'' +
                ", productId='" + productId + '\'' +
                ", active=" + active +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
