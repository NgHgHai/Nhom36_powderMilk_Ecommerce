package com.nhom36.milkPowder.services;

import com.nhom36.milkPowder.beans.Blog;
import com.nhom36.milkPowder.beans.Slider;
import com.nhom36.milkPowder.dao.BlogDAO;
import com.nhom36.milkPowder.dao.SliderDAO;
import com.nhom36.milkPowder.db.JDBIConnector;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class SliderService {
    Jdbi jdbi = JDBIConnector.get();
    private static SliderService instance;

    public static SliderService getInstance() {
        if (instance == null) {
            instance = new SliderService();
        }
        return instance;
    }

    public List<Slider> getAll() {
        return jdbi.withExtension(SliderDAO.class, dao -> dao.getAllSlider());
    }

    public Slider getById(String id) {
        return jdbi.withExtension(SliderDAO.class, dao -> dao.findById(id));
    }

    public void insert(Slider slider) {
        jdbi.useExtension(SliderDAO.class, dao -> dao.insertSlider(slider));
    }

    public void update(Slider slider) {
        jdbi.useExtension(SliderDAO.class, dao -> dao.updateSlider(slider));
    }

    public void delete(String id) {
        jdbi.useExtension(SliderDAO.class, dao -> dao.deleteSlider(id));
    }

    public static void main(String[] args) {
        System.out.println(new SliderService().getById(""));
    }
}
