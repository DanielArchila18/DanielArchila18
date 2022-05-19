/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package negocio;

import Modelo.Departamento;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import data.Conexion;
import java.util.Date;


/**
 *
 * @author luzam
 */
public class DepartamentoImp extends Conexion{
    private PreparedStatement pstDepartamentos=null;
    private ResultSet rsDepartamentos= null;
    private String query="";
    private List <Departamento> listaDepartamentos= new ArrayList<>();
    
    
    public List<Departamento> findAll(){
    this.query="SELECT * FROM Departamentos";
    try{
    if(this.getConnection() !=null){
        this.pstDepartamentos= this.getConnection().prepareStatement("query");
        this.rsDepartamentos=this.pstDepartamentos.executeQuery();
        while(this.rsDepartamentos.next()){
            Departamento departamento= new Departamento();
            departamento.setId(this.rsDepartamentos.getLong("id"));
            departamento.setDepartamento_codigo("departamento_codigo");
            departamento.setNombre_departamento("nombre_departamento");
            departamento.setFecha_hora_crea("fecha_hora_crea");
            departamento.setFecha_hora_modifica("fecha_hora_modifica");
            
            
  
            
            
            this.listaDepartamentos.add(departamento);
            
        }

    }
            else{
                System.out.println("Falló la conexion");
                }
    }catch(Exception e){
        e.printStackTrace();
    }
    return this.listaDepartamentos;
    }

  

}
