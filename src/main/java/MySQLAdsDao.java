import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection;

    public MySQLAdsDao(Config config) throws SQLException {
        DriverManager.registerDriver(new Driver());
        this.connection = DriverManager.getConnection(config.getUrl(), config.getUsername(), config.getPassword());
    }

    @Override
    public List<Ad> all() throws SQLException {
        Statement statement = connection.createStatement();
        List<Ad> bucket = new ArrayList<>();
        ResultSet rs = statement.executeQuery("SELECT * FROM ads");

        while (rs.next()) {
            int id = rs.getInt("id");
            int user_id = rs.getInt("user_id");
            String title = rs.getString("title");
            String description = rs.getString("description");


            Ad ad = new Ad(id, user_id, title, description);

            bucket.add(ad);
        }
        return bucket;
    }


    @Override
    public Long insert(Ad ad) throws SQLException {
        String query = "INSERT INTO ads(user_id, title, description) VALUES (" + ad.getUserId() + ",'" + ad.getTitle() +   "','" + ad.getDescription() + "')";
        Statement stmt = connection.createStatement();
        stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
        ResultSet rs = stmt.getGeneratedKeys();
        if (rs.next()) {
            System.out.println("Inserted a new record! New id: " + rs.getLong(1));
        }
        return rs.getLong(1);

    }
}
