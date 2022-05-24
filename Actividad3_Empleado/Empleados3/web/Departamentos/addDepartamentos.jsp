<%-- 
    Document   : addDepartamentos
    Created on : 22-may-2022, 13:23:38
    Author     : luzam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Departamentos</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <h1 class="">Agregar Departamento</h1>
       <form action="DepartamentoServletController" class="form-control-color">
     <label>Codigo departamento</label>
     <input type="number" name="departamento_codigo"/>
         <label>Nombre Departamento</label>
         <input type="text" name="nombre_departamento"/> 
         <input type="submit" name="accion" value="Actualizar"/> 
         

 </form>
    </body>
</html>
