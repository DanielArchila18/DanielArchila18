/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change tlhis license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaces;

import Modelo.Empleado;
import java.util.List;

/**
 *
 * @author luzam
 */
public interface CRUD {
    public List findAll();
    public Empleado listEmpleados(long id);
    public boolean add(Empleado emp);
    public boolean edit(Empleado emp);
    public boolean eliminar(long id);
}
