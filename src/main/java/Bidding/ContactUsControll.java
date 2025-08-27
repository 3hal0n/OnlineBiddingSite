package Bidding;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContactUsControll {
    // Connect DB
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert data function
    public static boolean insertdata(String email, String name, String question) {
        boolean isSuccess = false;

        try {
            // DB CONNECTION CALL
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // SQL Query
            String sql = "insert into contactus values(0,'" + email + "','" + name + "','" + question + "')";
            int rs = stmt.executeUpdate(sql);

            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }
}
