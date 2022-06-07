package Interfaces;

import java.util.List;

import Modelo.Departamento;





public interface interfazDepartamento {
    public List <Departamento> findAll();
   public Departamento listDepartamento(long id);
    public boolean add(Departamento departamento);
    public boolean actualizarDepartamento(Departamento departamento);
    public boolean eliminar(long id);
}
