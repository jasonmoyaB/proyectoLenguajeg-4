
package modelo;

import jakarta.jms.Connection;
import java.sql.*;


public class Conexion {
    Connection con;
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String user="proyectoMain";
    String pass="mbrenes12";
    public Connection conectar(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
             con = (Connection) DriverManager.getConnection(url,user,pass);
              System.out.println("Conexión exitosa a la base de datos.");
        }catch(Exception e){
            
        }
        return con;
    }
            
}
