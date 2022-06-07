/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.xarchilo.empleados.interfaces;

import com.xarchilo.empleados.modelo.Empleado;
import java.util.List;

/**
 *
 * @author luzam
 */
public interface interfazEmpleado {
    public List <Empleado> findAll();
   public Empleado listEmpleados(long id);
    public boolean add(Empleado empleado);
    public boolean actualizarEmpleado(Empleado empleado);
    public boolean eliminar(long id);
}
