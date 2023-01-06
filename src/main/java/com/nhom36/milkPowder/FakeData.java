package com.nhom36.milkPowder;

import com.github.javafaker.Faker;
import com.nhom36.milkPowder.beans.*;
import com.nhom36.milkPowder.dao.*;
import com.nhom36.milkPowder.db.JDBIConnector;
import com.nhom36.milkPowder.util.StringUtil;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.Locale;

public class FakeData {
    public static void main(String[] args) {
        FakeData fakeData = new FakeData();
//
        fakeData.insertBlog();

        ;

        Jdbi connector = JDBIConnector.get();
//        Cart cart = new CartService().getCartByUserId("nnwwfoebyd");

//        System.out.println(cart);


    }

    private void insertBlog() {
        Faker faker = new Faker(new Locale("vi"));
        Jdbi connector = JDBIConnector.get();
        for (int i = 0; i < 15; i++) {
            String fullName = faker.name().fullName();
            String firstName = fullName.split(" ")[0];
            String lastName = fullName.split(" ")[1];
            Blog blog = new Blog();

            blog.setId(StringUtil.getIDWithLength(10));
            blog.setAdminName(fullName);
            blog.setImage("https://picsum.photos/200/300");
            blog.setTitle(faker.book().title());
            blog.setContent(faker.book().genre());
            connector.useExtension(BlogDAO.class, handle -> handle.insert(blog));
        }
    }


    void insertDiscount(){
        Faker fakerUser = new Faker(new Locale("vi"));
        Jdbi jdbi = JDBIConnector.get();
        List<Discount> discounts = jdbi.withExtension(DiscountDAO.class, dao -> dao.list());
        for (Discount discount: discounts) {
            discount.setId(StringUtil.getIDWithLength(10));
            discount.setDiscountPercent(fakerUser.number().numberBetween(1, 100)*0.01);
            discount.setDiscountName(fakerUser.name().fullName());
            discount.setActive(fakerUser.number().numberBetween(0, 2));
            jdbi.useExtension(DiscountDAO.class, dao -> dao.insert(discount));
        }
    }

    void insertItem() {
        Faker fakerUser = new Faker(new Locale("vi"));
        Jdbi jdbi = JDBIConnector.get();
        List<Cart> carts = jdbi.withExtension(CartDAO.class, handle -> handle.list());
        List<Product> products = jdbi.withExtension(ProductDAO.class, handle -> handle.list());
        carts.stream().forEach(cart -> {
            int count = fakerUser.number().numberBetween(1, 10);
            int price = 0;
            for (int i = 0; i < count; i++) {

                int index = fakerUser.number().numberBetween(0, products.size() - 1);
                Product product = products.get(index);
                CartItem cartItem = new CartItem();

                cartItem.setCartId(cart.getId());
                cartItem.setProductId(product.getId());

                cartItem.setQuantity(fakerUser.number().numberBetween(1, 10));
                cartItem.setPrice(product.getPrice());
                price += cartItem.getPrice() * cartItem.getQuantity();
                jdbi.useExtension(CartItemDAO.class, handle -> handle.insert(cartItem));
            }
            cart.setTotalPrice(price);
            jdbi.useExtension(CartDAO.class, handle -> handle.update(cart));

        });
    }

    void crashCart() {

        Faker fakerUser = new Faker(new Locale("vi"));
        Jdbi jdbi = JDBIConnector.get();
        List<User> listUser = jdbi.withExtension(UserDAO.class, handle -> handle.getAllUser());
        for (User user : listUser) {
            Cart cart = new Cart();
            cart.setId(StringUtil.getIDWithLength(10));
            cart.setCustomerId(user.getId());
            cart.setTotalPrice(0);
            jdbi.useExtension(CartDAO.class, handle -> handle.insert(cart));
        }
    }

    public void crashUser() {
        Faker fakerUser = new Faker(new Locale("vi"));
        Jdbi jdbi = JDBIConnector.get();
        String avatarLink = "https://randomuser.me/api/portraits/women/:ran.jpg";
        jdbi.useExtension(UserDAO.class, dao -> {
            for (int i = 0; i < 100; i++) {
                User user = new User();
                user.setId(StringUtil.getIDWithLength(10));
                String fullName = fakerUser.name().fullName();
                String firstName = fullName.split(" ")[0];
                String lastName = fullName.split(" ")[1];
                user.setFirstname(firstName);
                user.setLastname(lastName);
                user.setAvatar(avatarLink.replace(":ran", String.valueOf(fakerUser.number().numberBetween(0, 99))));
                user.setAddress(fakerUser.address().fullAddress());
                user.setPhone(fakerUser.phoneNumber().phoneNumber());
                user.setEmail(fakerUser.internet().emailAddress());
                user.setPassword("123456");
                user.setRole(fakerUser.number().numberBetween(0, 2));


                dao.register(user);
            }
        });
    }
}

