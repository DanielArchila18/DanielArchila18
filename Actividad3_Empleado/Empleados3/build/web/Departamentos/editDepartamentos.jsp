<%-- 
    Document   : editDepartamentos
    Created on : 22-may-2022, 13:23:52
    Author     : luzam
--%>

<%@page import="Modelo.Departamento"%>
<%@page import="negocio.DepartamentoImp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Departamento</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <% DepartamentoImp deparImp= new DepartamentoImp();
        long id =Long.parseLong((String)request.getAttribute("iddep"));
        Departamento departamento=(Departamento)deparImp.listDepartamentos(id);
        %>
        <h1>Editar</h1>
        <form action="EmpleadoServletController"class="form-control-color" >
     <label>Codigo Departamento</label>
     <input type="text" name="tipo_documento" value="<%= departamento.getDepartamento_codigo()%>">
         <label>Departamento Codigo</label>
         <input type="number" name="numero_documento" value="<%= departamento.getNombre_departamento() %>"> 
         <label>Nombres</label>

         <input type="hidden" name="id" value="<%= departamento.getId()%>">
         <input type="submit" name="accion" value="Actualizar"> 
         <a href="DepartamentoServletController?accion=listar">Regresar</a>
    </body>
</html>
