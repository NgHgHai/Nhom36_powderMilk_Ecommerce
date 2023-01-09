package com.nhom36.milkPowder.beans;

import java.time.LocalDateTime;

public class User {
    private String id;
    private String lastname;
    private String firstname;
    private String avatar;
    private String password;
    private String address;
    private String phone;
    private String email;
    private int active;
    private int role;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public User() {
    }

    public User(String id, String lastname, String firstname, String avatar, String password, String address, String phone, String email, int active, int role, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.lastname = lastname;
        this.firstname = firstname;
        this.avatar = avatar;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.active = active;
        this.role = role;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }

    public String getId() {
        return id;
    }

    public String getLastname() {
        return lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getPassword() {
        return password;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public int getActive() {
        return active;
    }

    public int getRole() {
        return role;
    }

    public LocalDateTime getCreateAt() {
        return createAt;
    }

    public LocalDateTime getUpdateAt() {
        return updateAt;
    }
}
