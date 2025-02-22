package modelo;

import java.sql.*;

public class UsuarioDAO {

    public boolean validarUsuario(String username, String password) {
        boolean valido = false;
        String sql = "SELECT * FROM fide_usuarios_tb WHERE nombre = ? AND contraseña = ?";
        try (Connection con = new Conexion().conectar();
             PreparedStatement pst = con.prepareStatement(sql)) {
            
            pst.setString(1, username); // Aquí pasamos el nombre de usuario
            pst.setString(2, password); // Aquí pasamos la contraseña
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


