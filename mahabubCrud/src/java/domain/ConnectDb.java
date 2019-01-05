
package domain;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDb {
    
    Connection conn;
    String url = "jdbc:mysql://localhost:3306/productdb";
    String user = "root";
    String password = "1234";
    
    public Connection doConnect(){ 
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
        }
        return conn;
    }
}
