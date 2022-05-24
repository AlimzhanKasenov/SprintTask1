package KodJ;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBmanager {
    private static Connection connection;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tovary?useUnicode=true&serverTimezone=UTC", "root", "");
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public static ArrayList<Items> getItems(){
        ArrayList<Items> items = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement("SELECT id, name, description, price FROM items");
            ResultSet rs =st.executeQuery();
            while (rs.next()){
                Long id = rs.getLong("id");
                String name = rs.getString("name");
                String description = rs.getString("name");
                int price = rs.getInt("price");
                items.add(new Items(id, name, description, price));
            }
            st.close();
        } catch (Exception e){
            e.printStackTrace();
        }return items;
    }
}