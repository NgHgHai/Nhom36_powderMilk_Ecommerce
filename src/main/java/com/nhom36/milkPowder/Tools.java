package com.nhom36.milkPowder;

import com.nhom36.milkPowder.beans.Cart;
import com.nhom36.milkPowder.beans.Product;
import com.nhom36.milkPowder.beans.Slider;
import com.nhom36.milkPowder.beans.User;

import java.lang.reflect.Field;

public class Tools {
    public static void main(String[] args) {
        Tools tools = new Tools();

        Class product = Product.class;
        tools.select(product);
        tools.selectById(product);
        tools.generateInsert(product);
        tools.genereteUpdate(product);
        tools.delete(product);
    }

    void generateInsert(Class theClass) {

        StringBuffer sb = new StringBuffer();

        String headr = "insert into ";
        sb.append(headr);
        String tableName = theClass.getSimpleName().toLowerCase();
        sb.append(tableName);
        sb.append(" (");
        for (Field field : theClass.getDeclaredFields()) {
            sb.append(field.getName());
            sb.append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(") values (");
        for (Field field : theClass.getDeclaredFields()) {
            sb.append(":").append(field.getName()).append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(")");
        System.out.println(sb.toString());
    }

    void genereteUpdate(Class theClass) {
        StringBuffer sb = new StringBuffer();
        String header = "update ";
        sb.append(header);
        String tableName = theClass.getSimpleName().toLowerCase();
        sb.append(tableName);
        sb.append(" set ");
        for (Field field : theClass.getDeclaredFields()) {
            sb.append(field.getName());
            sb.append(" = ");
            sb.append(":").append(field.getName());
            sb.append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append(" where id = :id");
        System.out.println(sb.toString());
    }

    void select(Class theClass) {
        StringBuffer sb = new StringBuffer();
        String header = "select * from ";
        sb.append(header);
        String tableName = theClass.getSimpleName().toLowerCase();
        sb.append(tableName);
        System.out.println(sb.toString());
    }

    void selectById(Class theClass) {
        StringBuffer sb = new StringBuffer();
        String header = "select * from ";
        sb.append(header);
        String tableName = theClass.getSimpleName().toLowerCase();
        sb.append(tableName);
        sb.append(" where id = :id");
        System.out.println(sb.toString());
    }

    void delete(Class theClass) {
        StringBuffer sb = new StringBuffer();
        String header = "delete from ";
        sb.append(header);
        String tableName = theClass.getSimpleName().toLowerCase();
        sb.append(tableName);
        sb.append(" where id = :id");
        System.out.println(sb.toString());
    }
//    void genInsert() {
//        String query = "INSERT INTO `Product`(`id`, `name`, `price`, `min_age`, `min_player`, `max_player`, `min_playtime`," +
//                " `max_playtime`, `desc`, `img_display`, `weight_amount`, `weight_units`, `size_height`, `size_depth`, " +
//                "`size_units`, `active`, `inventory`, `producer_id`, `category_id`, `discount_id`, `create_at`, `update_at`) VALUES (:inserted)";
//        String inserted = "";
//        Class theClass = Product.class;
//        for (Field field : theClass.getDeclaredFields()) {
//            inserted += ":" + field.getName() + ",";
//        }
//        System.out.println(query.replace(":inserted", inserted));
//    }
//
//    void getGetParem() {
//        String param = "req.getParameter(\":name\")";
//        String paramString = "String :name = req.getParameter(\":name\");";
//        String paramInt = "int :name = Integer.parseInt(req.getParameter(\":name\")!=null?req.getParameter(\":name\"):\"-1\");";
//        String paramDouble = "double :name= Double.parseDouble(req.getParameter(\":name\") != null ? req.getParameter(\":name\") : \"-1\");";
//
//
//        Class theClass = Order.class;
//        for (Field field : theClass.getDeclaredFields()) {
////            inserted += ":" + field.getName() + ",";
//            if (field.getType().isAssignableFrom(String.class))
//                System.out.println(paramString.replaceAll(":name", field.getName()));
//            if (field.getType().isAssignableFrom(double.class))
//                System.out.println(paramDouble.replaceAll(":name", field.getName()));
//            if (field.getType().isAssignableFrom(int.class))
//                System.out.println(paramInt.replaceAll(":name", field.getName()));
//        }
//    }
//
//    void insertValue() throws FileNotFoundException {
//        String path = "";
//        Gson gson = new Gson();
//        HashMap<String, Objects> json = gson.fromJson(new FileReader(path), HashMap.class);
//    }
//
//    void genClass() {
////        String txt = "$('#:name').val(data.:name);";
//        String txt = ":name : $('#:name').val();";
//        Class theClass = Product.class;
//        for (Field field : theClass.getDeclaredFields()) {
//            System.out.println(txt.replaceAll(":name", field.getName()));
//        }
//    }
//
//    void genMethod() {
//        String txt = "product.:method(:name)";
//        Class theClass = Product.class;
//        Field[] fields = theClass.getDeclaredFields();
//        Method[] methods = Arrays.stream(theClass.getDeclaredMethods()).filter(field1 -> field1.getName().contains("set")).toArray(Method[]::new);
//        for (int i = 0; i < fields.length; i++) {
//            System.out.println(txt.replaceFirst(":method", methods[i].getName()).replaceFirst(":name", fields[i].getName()));
//        }
//    }
//
//
//    void genInput() {
//        String html = " <div class=\"form-group mb-3\">\n" +
//                "                            <label for=\":name\">:name</label>\n" +
//                "                            <input type=\"text\" class=\"form-control\" id=\":name\"\n" +
//                "                                   placeholder=\":name\" value=\"${product.:name}\">\n" +
//                "                        </div>";
//        Class theClass = Product.class;
//        for (Field field : theClass.getDeclaredFields()) {
//            System.out.println(html.replaceAll(":name", field.getName()));
//        }
//    }
}
