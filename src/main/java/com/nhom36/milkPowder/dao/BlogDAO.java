package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.Blog;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Blog.class)
public interface BlogDAO {
    @SqlQuery("select * from blog order by create_at desc")
    List<Blog> getLast();

    @SqlQuery("select * from blog")
    List<Blog> list();

    @SqlQuery("select * from blog where id = :id")
    Blog findById(@Bind("id") String id);

    @SqlUpdate("delete from blog where id = :id")
    int deleteById(@Bind("id") String id);

    @SqlUpdate("insert into blog (id, admin_name, title, image,content, create_at, update_at) values (:id, :adminName, :title,:image, :content, now(), now())")
    int insert(@BindBean Blog blog);

    @SqlUpdate("update blog set admin_name = :adminName, title = :title, image = :image, content = :content, update_at = now() where id = :id")
    int update(@BindBean Blog blog);

    @SqlUpdate("update blog set image = :image where id = :id")
    int updateImage(@Bind("id") String id, @Bind("image") String image);


}
