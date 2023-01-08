package com.nhom36.milkPowder.adapter;

import java.time.LocalDateTime;

public class LocalDateTimeDeserializer {
    public static void main(String[] args) {
        LocalDateTime a = LocalDateTime.parse("2023-01-08T12:14");
        System.out.println(a);
    }
}
