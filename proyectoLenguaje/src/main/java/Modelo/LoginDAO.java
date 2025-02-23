
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAO {
    public boolean validarUsuario(String nombre, String password) {
        Conexion conexionDB = new Conexion();
        Connection con = conexionDB.conectar();

        String sql = "SELECT * FROM fide_usuarios_tb WHERE nombre = ? AND contraseña = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            return rs.next(); // Devuelve true si el usuario existe
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

