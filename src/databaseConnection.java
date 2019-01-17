
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;


public class databaseConnection {
    final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final static String DB_URL = "jdbc:mysql://localhost:3306/busmanagement";
    
    
    public static Connection connection(){
        try{
            Class.forName(JDBC_DRIVER);
            
            Connection con = DriverManager.getConnection(DB_URL,"root","");
            return con;
        }
        catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }  
    }
   
}
