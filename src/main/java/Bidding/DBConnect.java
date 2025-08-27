package Bidding;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

    private static String url = "jdbc:mysql://localhost:3306/biding"; // Adjust based on your server configuration
    private static String username = "root"; // Your DB username
    private static String password = ""; // Your DB password

    // Ensure the proper MySQL Driver class name (modern versions use "com.mysql.cj.jdbc.Driver")
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    public static Connection getConnection() {
        Connection connection = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName(JDBC_DRIVER);

            // Establish the connection
            connection = DriverManager.getConnection(url, username, password);

        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found.");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Connection to the database failed! " + e.getMessage());
            e.printStackTrace();
        }

        return connection;
    }
}
