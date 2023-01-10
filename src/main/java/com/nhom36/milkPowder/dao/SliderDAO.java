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
        @SqlQuery("SELECT * FROM `slider` WHERE  id =:id")
        Slider findById(@Bind("id") String id);

        @SqlUpdate("INSERT INTO `slider`(`id`, `link`, `image`, `create_at`, `update_at`) VALUES (:id,:link,:image, now(), now())")
        int insertSlider(@BindBean Slider slider);

        @SqlUpdate("UPDATE `slider` SET `id`=:id,`link`=:link,`image`=:image,`update_at`= now() WHERE id = :id")
        void updateSlider(@BindBean Slider slider);

        @SqlUpdate("delete from slider where id =:id")
        void deleteSlider(@Bind("id") String id);


}
