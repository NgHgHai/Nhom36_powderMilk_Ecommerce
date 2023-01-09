package com.nhom36.milkPowder.dao;

import com.nhom36.milkPowder.beans.CartItem;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(CartItem.class)
public interface CartItemDAO {


    @SqlQuery("select * from cart_item where cart_id = :cartId")
    List<CartItem> findByCartId(@Bind("id") String cartId);

    @SqlQuery("select product_id from cart_item where cart_id = :cartId")
    List<String> getProductId(@Bind("cartId") String cartId);

    @SqlQuery("select * from cart_item where cart_id = :cartId and product_id = :productId")
    int getQuantity(@Bind("cartId") String cartId, @Bind("productId") String productId);

    @SqlUpdate("insert into cart_item (cart_id, product_id, quantity,price,create_at, update_at) values (:cartId, :productId, :quantity,:price,now(),now())")
    int insert(@BindBean CartItem cartItem);

    @SqlUpdate("update cart_item set quantity = :quantity, price = :price, update_at = now() where cart_id = :cartId and product_id = :productId")
    int update(@Bind("cartId") String cartId, @Bind("productId") String productId, @Bind("quantity") int quantity, @Bind("price") double price);

    @SqlUpdate("delete from cart_item where cart_id = :cartId and product_id = :productId")
    int delete(@Bind("cartId") String cartId, @Bind("productId") String productId);


}
