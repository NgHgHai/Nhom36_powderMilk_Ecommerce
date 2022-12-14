package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Blog {
    private String id;
    private String adminName;
    private String title;
    private String image;
    private String content;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Blog() {
    }

    public Blog(String id, String adminName, String title, String image, String content, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.adminName = adminName;
        this.title = title;
        this.image = image;
        this.content = content;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }



    public String getId() {
        return id;
    }

    public String getAdminName() {
        return adminName;

    }

    public String getTitle() {
        return title;
    }

    public String getImage() {
        return image;
    }



    public String getContent() {
        return content;
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

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id='" + id + '\'' +
                ", adminName='" + adminName + '\'' +
                ", title='" + title + '\'' +
                ", image='" + image + '\'' +
                ", content='" + content + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Blog blog = (Blog) o;
        return Objects.equals(id, blog.id) && Objects.equals(adminName, blog.adminName) && Objects.equals(title, blog.title) && Objects.equals(image, blog.image) && Objects.equals(content, blog.content) && Objects.equals(createAt, blog.createAt) && Objects.equals(updateAt, blog.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, adminName, title, image, content, createAt, updateAt);
    }
}