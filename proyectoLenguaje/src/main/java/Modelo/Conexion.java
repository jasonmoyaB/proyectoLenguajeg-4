
package Modelo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    Connection con;
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String user="proyectoMain";
    String pass="mrbenes12";
    
    public Connection conectar() throws SQLException{
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con= DriverManager.getConnection(url,user,pass);
        }catch(Exception e){
            
        }
        return con;
        
            
        }
    }

