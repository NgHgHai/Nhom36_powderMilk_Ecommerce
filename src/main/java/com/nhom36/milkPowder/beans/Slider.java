package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;
import java.util.Objects;

public class Slider {
    private String id;
    private String link;
    private String image;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Slider() {
    }

    public Slider(String id, String link, String image, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.link = link;
        this.image = image;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Slider{" +
                "id='" + id + '\'' +
                ", link='" + link + '\'' +
                ", image='" + image + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }

    public String getId() {
        return id;
    }

    public String getLink() {
        return link;
    }


    public String getImage() {
        return image;
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

    public void setLink(String link) {
        this.link = link;
    }


    public void setImage(String image) {
        this.image = image;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Slider slider = (Slider) o;
        return Objects.equals(id, slider.id) && Objects.equals(link, slider.link)  && Objects.equals(image, slider.image) && Objects.equals(createAt, slider.createAt) && Objects.equals(updateAt, slider.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, link, image, createAt, updateAt);
    }
}