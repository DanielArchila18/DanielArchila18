/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author luzam
 */
public class Conexion {
    //Atributos que establecen la conexion
    private String db="empleados";
    private Connection conex= null;
    private String usuario="root";
    private String password="FA-200306";
    private String url="jdbc:mysql://localhost:3306"+db;

    public Conexion() {
    }

   

    
    
    
public Connection getConnection() throws SQLException, ClassNotFoundException{
Class.forName("com.mysql.cj.jdbc.Driver");
conex=DriverManager.getConnection(url, usuario,password);
return conex;
}    
    
    
}
