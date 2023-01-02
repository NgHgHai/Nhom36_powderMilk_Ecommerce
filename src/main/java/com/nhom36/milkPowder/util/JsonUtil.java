package com.nhom36.milkPowder.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nhom36.milkPowder.adapter.LocalDateTimeDeserializer;
import com.nhom36.milkPowder.adapter.LocalDateTimeSerializer;
import com.nhom36.milkPowder.beans.Product;

import java.time.LocalDateTime;
import java.util.List;

public class JsonUtil {
    private GsonBuilder builder;
    private Gson gson;



    public JsonUtil(){
       builder = new GsonBuilder().registerTypeAdapter(LocalDateTime.class, new LocalDateTimeSerializer())
               .registerTypeAdapter(LocalDateTime.class, new LocalDateTimeDeserializer());
    }

    public String toJSon(Object o) {
        return gson.toJson(o);
    }
}
