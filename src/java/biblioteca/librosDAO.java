/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package biblioteca;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gullo
 */
public class librosDAO {
    
    public List<librosClass> getAll() {
        try {
            database db = new database();
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("SELECT * FROM libros ;");

            ResultSet rs = pstat.executeQuery();

            List<librosClass> librosList = new ArrayList<>();

            while (rs.next()) {
               librosList.add(new librosClass(rs.getInt("id"),
                        rs.getString("titulo"),
                        rs.getString("autor"),
                        rs.getString("genero"),
                        rs.getString("imagen")));
                      
            }

            return librosList;

        } catch (SQLException ex) {
            return null;
        }
    }
    
    public void insert( librosClass libros) {
        try {
            database db = new database();
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("INSERT INTO libros (titulo , autor, genero, imagen) VALUES (?, ?, ?, ?)");
            
            pstat.setString(1, libros.getTitulo());
            pstat.setString(2, libros.getAutor());
            pstat.setString(3, libros.getGenero());
            pstat.setString(4, libros.getImagen());
            
            pstat.executeUpdate();
        } catch (SQLException ex) {
             System.getLogger(librosDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
    
    public void delete(int Id) {
        try {
            database db = new database();
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("DELETE FROM libros WHERE Id = ?");
            
            pstat.setInt(1, Id);           
            
            pstat.executeUpdate();
        } catch (SQLException ex) {
             System.getLogger(librosDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
        
    }
    
    public librosClass buscarlibro (int id) {
    try {
        database db = new database();
        Connection conn = db.getConnection();

        PreparedStatement pstat = conn.prepareStatement("SELECT * FROM libros WHERE id = ?");

        pstat.setInt(1, id);

        ResultSet rs = pstat.executeQuery();

        if (rs.next()) {
            return new librosClass(
                rs.getInt("id"),
                rs.getString("titulo"),
                rs.getString("autor"),
                rs.getString("genero"),
                rs.getString("imagen")
            );
        }

    } catch (SQLException ex) {
        System.getLogger(librosDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
    }

    return null;
}
    public void guardarcambios(librosClass libro) {
    try {
        database db = new database();
        Connection conn = db.getConnection();

        PreparedStatement pstat = conn.prepareStatement("UPDATE libros SET titulo = ?, autor = ?, genero = ?, imagen = ? WHERE id = ?"
        );

        pstat.setString(1, libro.getTitulo());
        pstat.setString(2, libro.getAutor());
        pstat.setString(3, libro.getGenero());
        pstat.setString(4, libro.getImagen());
        pstat.setInt(5, libro.getId());

        pstat.executeUpdate();

    } catch (SQLException ex) {
     System.getLogger(librosDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
    }
}
}

    
    

