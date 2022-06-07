/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;


import java.util.List;

import Modelo.Empleado;

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
