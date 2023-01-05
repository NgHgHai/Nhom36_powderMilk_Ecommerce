import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.services.ProductService;

import java.util.List;

public class TestAbc {
    public static void main(String[] args) {
//        CategoryService categoryService = new CategoryService();
//        List<NewCategory> categoryList = categoryService.getAll();
//        categoryList.stream().forEach(System.out::println);
        ProductService productService = new ProductService();
        List<Product> products = productService.list();
        products.stream().forEach(System.out::println);
    }
}
