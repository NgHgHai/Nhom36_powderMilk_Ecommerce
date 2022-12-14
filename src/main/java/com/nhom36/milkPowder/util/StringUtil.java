package com.nhom36.milkPowder.util;

import java.util.Random;

public class StringUtil {
    public static String getIDWithLength(int length){
           int leftLimit = 97; // letter 'a'
            int rightLimit = 122; // letter 'z'
            int targetStringLength = 10;
            Random random = new Random();

            String generatedString = random.ints(leftLimit, rightLimit + 1)
                    .limit(targetStringLength)
                    .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                    .toString();
            return generatedString;

    }

    public static void main(String[] args) {
        System.out.println(getIDWithLength(10));
    }
}
