package com.nhom36.milkPowder.beans;

import com.nhom36.milkPowder.emun.Role;

import java.util.Objects;

public class User {
    private String id;
    private String lastName;
    private String firstName;
    private String avatar;
    private String password;
    private String address;
    private String phone;
    private String mail;
    private int active;
    private Role role;

    public User() {
    }

    public User(String id, String lastName, String firstName, String avatar, String password, String address, String phone, String mail, int active, Role role) {
        this.id = id;
        this.lastName = lastName;
        this.firstName = firstName;
        this.avatar = avatar;
        this.password = password;
        this.address = address;
        this.phone = phone;
        this.mail = mail;
        this.active = active;
        this.role = role;
    }

    public String getName() {
        return firstName + " " + lastName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return active == user.active && Objects.equals(id, user.id) && Objects.equals(lastName, user.lastName) && Objects.equals(firstName, user.firstName) && Objects.equals(avatar, user.avatar) && Objects.equals(password, user.password) && Objects.equals(address, user.address) && Objects.equals(phone, user.phone) && Objects.equals(mail, user.mail) && role == user.role;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, lastName, firstName, avatar, password, address, phone, mail, active, role);
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
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

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
