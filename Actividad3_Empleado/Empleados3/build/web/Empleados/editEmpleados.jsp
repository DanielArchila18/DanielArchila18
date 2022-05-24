<%-- 
    Document   : editCiudades
    Created on : 22-may-2022, 13:22:08
    Author     : luzam
--%>

<%@page import="Modelo.Empleado"%>
<%@page import="negocio.EmpleadoImp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Empleados</title>
    </head>
    <body>
        <% EmpleadoImp empleaImp= new EmpleadoImp();
        long id =Long.parseLong((String)request.getAttribute("idemp"));
        Empleado empleado=(Empleado)empleaImp.listEmpleados(id);
        %>
        <h1>Editar</h1>
        <form action="EmpleadoServletController"class="form-control-color" >
     <label>Tipo documento</label>
     <input type="text" name="tipo_documento" value="<%= empleado.getTipo_documento() %>">
         <label>N° Documento</label>
         <input type="number" name="numero_documento" value="<%= empleado.getNumero_documento() %>"> 
         <label>Nombres</label>
         <input type="text" name="nombres"value="<%= empleado.getNombres()%>">
         <label>Apellidos</label>
         <input type="text" name="apellidos"value="<%= empleado.getApellidos()%>">
         <label>Departamento</label>
         <input type="number" name="departamento_id" value="<%= empleado.getDepartamento_id() %>">
         <label>Direccion</label>
         <input type="text" name="direccion" value="<%= empleado.getDireccion() %>">
         <label>Correo Electronico</label>
         <input type="text" name="correo_electronico" value="<%= empleado.getCorreo_electronico() %>">
         <label>Telefono</label>
         <input type="number" name="telefono" value="<%= empleado.getTelefono() %>">
         <input type="hidden" name="id" value="<%= empleado.getId()%>">
         <input type="submit" name="accion" value="Actualizar"> 
         <a href="EmpleadoServletController?accion=listar">Regresar</a>
    </body>
</html>
