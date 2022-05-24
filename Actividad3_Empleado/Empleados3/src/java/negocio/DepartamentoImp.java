/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package negocio;

import Modelo.Departamento;
import data.Conexion;
import interfaces.DepCRUD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luzam
 */
public class DepartamentoImp implements DepCRUD {
    Conexion cnx = new Conexion();
     Connection conex;
     PreparedStatement pstDepartamentos;
     ResultSet rsDepartamentos;
     Departamento departamento = new Departamento();
     String query="";

    @Override
    public List findAll() {
         ArrayList<Departamento>listDepartamento=new ArrayList<>();
     this.query="SELECT * FROM Departamentos";
     try{
     this.conex=cnx.getConnection();
     pstDepartamentos=conex.prepareStatement(query);
     rsDepartamentos=pstDepartamentos.executeQuery();
     while(rsDepartamentos.next()){
     Departamento departamento= new Departamento();
            departamento.setId(this.rsDepartamentos.getLong("id"));
            departamento.setDepartamento_codigo(this.rsDepartamentos.getLong("departamento_codigo"));
            departamento.setNombre_departamento(this.rsDepartamentos.getString("nombre_departamento"));
            departamento.setFecha_hora_crea(this.rsDepartamentos.getDate("fecha_hora_crea"));
            departamento.setFecha_hora_modifica(this.rsDepartamentos.getDate("fecha_hora_modifica"));
            listDepartamento.add(departamento);
     }
     }catch(Exception e){}
        return listDepartamento;
    }

    @Override
    public Departamento listDepartamentos(long id) {
        this.query="SELECT * FROM Departamentos WHERE Id="+id;
        try{
        departamento.setId(this.rsDepartamentos.getLong("id"));
           while(rsDepartamentos.next()){
            this.conex=cnx.getConnection();
            pstDepartamentos=conex.prepareStatement(query);
            rsDepartamentos=pstDepartamentos.executeQuery();
            departamento.setId(this.rsDepartamentos.getLong("id"));
            departamento.setDepartamento_codigo(this.rsDepartamentos.getLong("departamento_codigo"));
            departamento.setNombre_departamento(this.rsDepartamentos.getString("nombre_departamento"));
            departamento.setFecha_hora_crea(this.rsDepartamentos.getDate("fecha_hora_crea"));
            departamento.setFecha_hora_modifica(this.rsDepartamentos.getDate("fecha_hora_modifica"));
           }
        }catch (Exception e){}
        return null;
    }

    @Override
    public boolean add(Departamento dep) {
        this.query="INSERT INTO Departamentos (departamento_codigo,nombre_departamento) values(?,?)";
     try {
         conex=cnx.getConnection();
        pstDepartamentos=conex.prepareStatement(query);
        this.pstDepartamentos.setLong (1, departamento.getDepartamento_codigo());
        this.pstDepartamentos.setString(2, departamento.getNombre_departamento());
        this.pstDepartamentos.executeUpdate();
        
     } catch (Exception e) {
        
    }
     return false;
    }

    @Override
    public boolean edit(Departamento dep) {
        this.query="UPDATE Departamentos SET departamento_codigo='"+departamento.getDepartamento_codigo()+"',nombre_departamento='"+departamento.getNombre_departamento()+"' WHERE id ="+departamento.getId();
        try{
        conex=cnx.getConnection();
        pstDepartamentos=conex.prepareStatement(query);
        this.pstDepartamentos.executeUpdate();
        }catch (Exception e){}
        return false;
    }

    @Override
    public boolean eliminar(long id) {
    this.query="DELETE FROM Departamentos WHERE id="+id;
    try{
    conex=cnx.getConnection();
    pstDepartamentos=conex.prepareStatement(query);
    pstDepartamentos.executeUpdate();
    }catch(Exception e){}
     return false;
    }
}
