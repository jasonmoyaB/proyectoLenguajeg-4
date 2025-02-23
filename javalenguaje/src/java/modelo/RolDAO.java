package modelo;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RolDAO {

    public List<String> obtenerRoles() {
        List<String> roles = new ArrayList<>();
        String sql = "SELECT nombre_rol FROM fide_roles_tb";
        
        try (Connection con = new Conexion().conectar();
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            while (rs.next()) {
                roles.add(rs.getString("nombre_rol"));
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return roles;
    }

    public boolean agregarRol(String nombreRol) {
        // Usamos la secuencia fide_roles_seq para generar automáticamente el id_rol
        String sql = "INSERT INTO fide_roles_tb (id_rol, nombre_rol) "
                   + "VALUES (fide_roles_seq.NEXTVAL, ?)";
        
        try (Connection con = new Conexion().conectar();
             PreparedStatement pst = con.prepareStatement(sql)) {
            
            pst.setString(1, nombreRol);  // Asignamos el nombre del rol
            int rowsAffected = pst.executeUpdate();
            return rowsAffected > 0;  // Si las filas afectadas son mayores a 0, se insertó correctamente
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;  // Si ocurre algún error, retornamos false
        }
    }
}


