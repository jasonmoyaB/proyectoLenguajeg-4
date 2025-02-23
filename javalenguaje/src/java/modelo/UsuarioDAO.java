package modelo;

import java.sql.*;

public class UsuarioDAO {

    // Método para obtener el rol de un usuario
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

    // Método para validar que el usuario existe
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

    public boolean agregarUsuario(String nombreUsuario, String correo, String contraseña, String rol) {
    boolean resultado = false;
    String sql = "INSERT INTO fide_usuarios_tb (id_usuario, nombre, correo, contraseña, id_rol) "
               + "VALUES (fide_usuarios_seq.NEXTVAL, ?, ?, ?, (SELECT id_rol FROM fide_roles_tb WHERE nombre_rol = ?))";
    
    try (Connection con = new Conexion().conectar();
         PreparedStatement pst = con.prepareStatement(sql)) {

        pst.setString(1, nombreUsuario);
        pst.setString(2, correo);
        pst.setString(3, contraseña);
        pst.setString(4, rol);  // Asignar el rol

        int filasAfectadas = pst.executeUpdate();
        if (filasAfectadas > 0) {
            resultado = true;  // El usuario se insertó correctamente
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return resultado;
}

  }
