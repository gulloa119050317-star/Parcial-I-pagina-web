/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package biblioteca;


import java.sql.*;



public class database {
    
      Connection conn;
      
public database (){
    
    try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/biblioteca", "root", "Admin$1234");
        } catch (ClassNotFoundException | SQLException ex) {
            System.getLogger(database.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }

    public Connection getConnection() {
        return conn;
    }

    public void Close() {
        try {
            conn.close();
        } catch (SQLException ex) {
            System.getLogger(database.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
}
    


    
    
    

