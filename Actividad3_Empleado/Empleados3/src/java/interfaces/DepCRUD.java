/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaces;

import Modelo.Departamento;
import java.util.List;

/**
 *
 * @author luzam
 */
public interface DepCRUD {
        public List findAll();
    public Departamento listDepartamentos(long id);
    public boolean add(Departamento dep);
    public boolean edit(Departamento dep);
    public boolean eliminar(long id);
}
