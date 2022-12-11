package com.nhom36.milkPowder.beans;

import java.util.HashMap;
import java.util.Map;

public class OderStatus {
    public static final int ToSHIP = 0;
    public static final int CANCELLED = 1;
    public static final int COMPLETED = 2;


    public static Map<String,Integer> mapOrderStatus(){
        Map<String,Integer> map= new HashMap<>();
        map.put("ToSHIP",0);
        map.put("CANCELLED",1);
        map.put("COMPLETED",2);
        return map;
    }
}
