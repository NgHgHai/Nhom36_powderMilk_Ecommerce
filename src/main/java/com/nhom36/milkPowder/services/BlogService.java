package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.dao.BlogDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class BlogService {

    private static BlogService instance;

    public static BlogService getInstance() {
        if (instance == null) {
            instance = new BlogService();
        }
        return instance;
    }
    Jdbi connect = JDBIConnector.get();
    public List<Blog> getLast() { return connect.withExtension(BlogDAO.class, handle -> handle.getLast()); }

}
