package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.dao.BlogDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class BlogService {
    Jdbi jdbi = JDBIConnector.get();
    private static BlogService instance;

    public static BlogService getInstance() {
        if (instance == null) {
            instance = new BlogService();
        }
        return instance;
    }

    public List<Blog> getAll() {
        return jdbi.withExtension(BlogDAO.class, dao -> dao.list());
    }

    public Blog getById(String id) {
        return jdbi.withExtension(BlogDAO.class, dao -> dao.findById(id));
    }

    public void insert(Blog blog) {
        jdbi.useExtension(BlogDAO.class, dao -> dao.insert(blog));
    }

    public void update(Blog blog) {
        jdbi.useExtension(BlogDAO.class, dao -> dao.update(blog));
    }

    public void delete(String id) {
        jdbi.useExtension(BlogDAO.class, dao -> dao.deleteById(id));
    }

    public List<Blog> getLast() {
        return jdbi.withExtension(BlogDAO.class, handle -> handle.getLast());
    }

    public static void main(String[] args) {
        System.out.println(new BlogService().getByName("The Art of Healthy Living"));
    }

    public List<Blog> getTop3() {
        return jdbi.withExtension(BlogDAO.class, handle -> handle.getTop3());
    }

    public Blog getByName(String title) {
        return jdbi.withExtension(BlogDAO.class, handle -> handle.getByName(title));
    }
}


