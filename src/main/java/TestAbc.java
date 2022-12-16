import com.nhom36.milkPowder.beans.Category;
import com.nhom36.milkPowder.beans.NewCategory;
import com.nhom36.milkPowder.beans.NewProduct;
import com.nhom36.milkPowder.services.CategoryService;
import com.nhom36.milkPowder.services.ProductService;

import java.util.List;

public class TestAbc {
    public static void main(String[] args) {
//        CategoryService categoryService = new CategoryService();
//        List<NewCategory> categoryList = categoryService.getAll();
//        categoryList.stream().forEach(System.out::println);
        ProductService productService = new ProductService();
        List<NewProduct> products = productService.getAll();
        products.stream().forEach(System.out::println);
    }
}
