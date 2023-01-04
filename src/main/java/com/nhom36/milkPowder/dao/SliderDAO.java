package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Slider;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Slider.class)
public interface SliderDAO {

        @SqlQuery("select * from slider")
        List<Slider> getAllSlider();

        @SqlUpdate("insert into slider (id,name, url,image, create_at, update_at) values (:id,:name,:url, :image, now(), now())")
        void insertSlider(@BindBean Slider slider);

        @SqlUpdate("update slider  name = :name, image = :image, link = :link, update_at = now() where id = :id")
        void updateSlider(@BindBean Slider slider);

        @SqlUpdate("delete from slider where id = :id")
        void deleteSlider(@Bind("id") String id);


}
