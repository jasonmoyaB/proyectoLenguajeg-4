package modelo;

import java.sql.*;

public class UsuarioDAO {

    public String obtenerRolUsuario(String username, String password) {
    String rol = null;
    String sql = "SELECT r.nombre_rol FROM fide_usuarios_tb u "
               + "JOIN fide_roles_tb r ON u.id_rol = r.id_rol "
               + "WHERE u.nombre = ? AND u.contraseña = ?";
    try (Connection con = new Conexion().conectar();
         PreparedStatement pst = con.prepareStatement(sql)) {
        
        pst.setString(1, username); 
        pst.setString(2, password); 
        ResultSet rs = pst.executeQuery();
        
        if (rs.next()) {
            rol = rs.getString("nombre_rol");
        }
        
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return rol;
}


    public boolean validarUsuario(String username, String password) {
        boolean valido = false;
        String sql = "SELECT * FROM fide_usuarios_tb WHERE nombre = ? AND contraseña = ?";
        try (Connection con = new Conexion().conectar();
             PreparedStatement pst = con.prepareStatement(sql)) {
            
            pst.setString(1, username);
            pst.setString(2, password);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                valido = true;
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return valido;
    }
}



