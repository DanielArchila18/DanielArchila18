/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author luzam
 */
public class Ciudad {
    private long id;
    private String nombre_ciudad;
    private String codigo_ciudad;

    public Ciudad() {
    }
    
    
    public Ciudad(long id, String nombre_ciudad, String codigo_ciudad) {
        this.id = id;
        this.nombre_ciudad = nombre_ciudad;
        this.codigo_ciudad = codigo_ciudad;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre_ciudad() {
        return nombre_ciudad;
    }

    public void setNombre_ciudad(String nombre_ciudad) {
        this.nombre_ciudad = nombre_ciudad;
    }

    public String getCodigo_ciudad() {
        return codigo_ciudad;
    }

    public void setCodigo_ciudad(String codigo_ciudad) {
        this.codigo_ciudad = codigo_ciudad;
    }
    
    
}
