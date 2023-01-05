package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.ProductImage;
import com.nhom36.milkPowder.dao.ImageProductDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class ImageService {
    private static ImageService instance = null;
    Jdbi connector = JDBIConnector.get();

    public ImageService() {
    }
    public static ImageService getInstance(){
        if(instance == null)
            instance = new ImageService();
        return instance;
    }
    public List<ProductImage> getImageProduct(String productId){
        return connector.withExtension(ImageProductDAO.class, handler -> handler.findByProductId(productId));
    }
}
