/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package negocio;

import Modelo.Empleado;
import data.Conexion;
import interfaces.CRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author luzam
 */
public class EmpleadoImp implements CRUD {
 Conexion cnx = new Conexion();
     Connection conex;
     PreparedStatement pstEmpleados;
     ResultSet rsEmpleados;
     Empleado empleado = new Empleado();
     String query="";

    @Override
    public List findAll() {
     ArrayList<Empleado>listEmpleado=new ArrayList<>();
     this.query="SELECT * FROM Empleados";
     try{
     this.conex=cnx.getConnection();
     pstEmpleados=conex.prepareStatement(query);
     rsEmpleados=pstEmpleados.executeQuery();
     while(rsEmpleados.next()){
     Empleado empleado = new Empleado();
            empleado.setId(this.rsEmpleados.getLong("id"));
            empleado.setTipo_documento(this.rsEmpleados.getString("tipo_documento"));
            empleado.setNumero_documento(this.rsEmpleados.getLong("numero_documento"));
            empleado.setNombres(this.rsEmpleados.getString("nombres"));
            empleado.setApellidos(this.rsEmpleados.getString("apellidos"));
            empleado.setDepartamento_id(this.rsEmpleados.getLong("departamento_id"));
            empleado.setDireccion(this.rsEmpleados.getString("direccion"));
            empleado.setCorreo_electronico(this.rsEmpleados.getString("correo_electronico"));
            empleado.setTelefono(this.rsEmpleados.getLong("telefono"));
            empleado.setFecha_hora_crea(this.rsEmpleados.getDate("fecha_hora_crea"));
            empleado.setFecha_hora_modifica(this.rsEmpleados.getDate("fecha_hora_modifica"));
            listEmpleado.add(empleado);
     }
     
     }catch(Exception e){
     }
     return listEmpleado;
    }

    @Override
    public Empleado listEmpleados(long id) {
     this.query="SELECT * FROM Empleados WHERE Id="+id;
     try{
     this.conex=cnx.getConnection();
     pstEmpleados=conex.prepareStatement(query);
     rsEmpleados=pstEmpleados.executeQuery();
     while(rsEmpleados.next()){
     Empleado empleado = new Empleado();
            empleado.setId(this.rsEmpleados.getLong("id"));
            empleado.setTipo_documento(this.rsEmpleados.getString("tipo_documento"));
            empleado.setNumero_documento(this.rsEmpleados.getLong("numero_documento"));
            empleado.setNombres(this.rsEmpleados.getString("nombres"));
            empleado.setApellidos(this.rsEmpleados.getString("apellidos"));
            empleado.setDepartamento_id(this.rsEmpleados.getLong("departamento_id"));
            empleado.setDireccion(this.rsEmpleados.getString("direccion"));
            empleado.setCorreo_electronico(this.rsEmpleados.getString("correo_electronico"));
            empleado.setTelefono(this.rsEmpleados.getLong("telefono"));
            empleado.setFecha_hora_crea(this.rsEmpleados.getDate("fecha_hora_crea"));
            empleado.setFecha_hora_modifica(this.rsEmpleados.getDate("fecha_hora_modifica"));
         
     }
     
     }catch(Exception e){
     }
     return null;
    }

    @Override
    public boolean add(Empleado emp) {
         this.query="INSERT INTO Empleados (tipo_documento,numero_documento,nombres,apellidos,departamento_id,direccion,correo_electronico,telefono) values(?,?,?,?,?,?,?,?)";
     try {
         conex=cnx.getConnection();
        pstEmpleados=conex.prepareStatement(query);
        this.pstEmpleados.setString (1, empleado.getTipo_documento());
        this.pstEmpleados.setLong(2, empleado.getNumero_documento());
        this.pstEmpleados.setString(3, empleado.getNombres());
        this.pstEmpleados.setString(4, empleado.getApellidos());
        this.pstEmpleados.setLong(5, empleado.getDepartamento_id());
        this.pstEmpleados.setString(6, empleado.getDireccion());
        this.pstEmpleados.setString(7, empleado.getCorreo_electronico());
        this.pstEmpleados.setLong(8, empleado.getTelefono());
        this.pstEmpleados.executeUpdate();
        
     } catch (Exception e) {
        
    }
     return false;
    }
    @Override
    public boolean edit(Empleado emp) {
    this.query="UPDATE  Empleados SET  tipo_documento='"+empleado.getTipo_documento()+"',numero_documento='"+empleado.getNumero_documento()+"',nombres='"+empleado.getNombres()+"',apellidos='"+empleado.getApellidos()+"',departamento_id='"+empleado.getDepartamento_id()+"',direccion='"+empleado.getDireccion()+"',correo_electronico='"+empleado.getCorreo_electronico()+"',telefono='"+empleado.getTelefono()+"'WHERE id ="+empleado.getId();
    try{
        conex=cnx.getConnection();
        pstEmpleados=conex.prepareStatement(query);
        pstEmpleados.executeUpdate();
    }catch(Exception e){}
    return false;
    }

    

    @Override
    public boolean eliminar(long id) {
    this.query="DELETE FROM Empleados WHERE id="+id;
    try{
    conex=cnx.getConnection();
    pstEmpleados=conex.prepareStatement(query);
    pstEmpleados.executeUpdate();
    }catch(Exception e){}
     return false;

    }
}
    


  

   