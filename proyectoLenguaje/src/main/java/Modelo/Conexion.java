
package Modelo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    Connection con;
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String user="proyectoMain";
    String pass="mbrenes12";
    
    public Connection conectar() throws SQLException{
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con= DriverManager.getConnection(url,user,pass);
        }catch(Exception e){
            System.out.println("error al conectar a la Base de datos");
        }
        return con;
        
            
        }
    }

