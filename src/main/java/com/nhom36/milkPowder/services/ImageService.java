package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.ProductImage;
import com.nhom36.milkPowder.dao.ImageProductDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ImageService {
    Jdbi connector = JDBIConnector.get();

    public ImageService() {
    }
    public String getLinkImageProduct(String productId){
        return connector.withExtension(ImageProductDAO.class, handler -> handler.findByProductId(productId));
    }
    public static void main(String[] args) {
        System.out.println(new ImageService().getLinkImageProduct("et101"));
    }




}
