/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.Date;

/**
 *
 * @author luzam
 */
public class Departamento {
    private long id;
    private long departamento_codigo;
    private String nombre_departamento;
    private Date fecha_hora_crea;
    private Date fecha_hora_modifica;

    public Departamento() {
    }

    public Departamento(long id, long departamento_codigo, String nombre_departamento, Date fecha_hora_crea, Date fecha_hora_modifica) {
        this.id = id;
        this.departamento_codigo = departamento_codigo;
        this.nombre_departamento = nombre_departamento;
        this.fecha_hora_crea = fecha_hora_crea;
        this.fecha_hora_modifica = fecha_hora_modifica;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getDepartamento_codigo() {
        return departamento_codigo;
    }

    public void setDepartamento_codigo(long departamento_codigo) {
        this.departamento_codigo = departamento_codigo;
    }

    public String getNombre_departamento() {
        return nombre_departamento;
    }

    public void setNombre_departamento(String nombre_departamento) {
        this.nombre_departamento = nombre_departamento;
    }

    public Date getFecha_hora_crea() {
        return fecha_hora_crea;
    }

    public void setFecha_hora_crea(Date fecha_hora_crea) {
        this.fecha_hora_crea = fecha_hora_crea;
    }

    public Date getFecha_hora_modifica() {
        return fecha_hora_modifica;
    }

    public void setFecha_hora_modifica(Date fecha_hora_modifica) {
        this.fecha_hora_modifica = fecha_hora_modifica;
    }
}


    