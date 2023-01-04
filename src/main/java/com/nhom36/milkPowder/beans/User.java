package com.nhom36.milkPowder.beans;

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

    public User() {
    }

    public User(String id, String lastname, String firstname, String avatar, String password, String address, String phone, String mail, int active, int role) {
        this.id = id;
        this.lastname = lastname;
        this.firstname = firstname;
        this.avatar = avatar;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.email = mail;
        this.active = active;
        this.role = role;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
