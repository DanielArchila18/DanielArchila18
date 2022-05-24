<%-- 
    Document   : addEmpleados
    Created on : 22-may-2022, 13:21:34
    Author     : luzam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Empleado</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body class="">
        <h1 class="">Agregar Empleado</h1>
       <form action="EmpleadoServletController" class="form-control-color">
     <label>Tipo documento</label>
     <input type="text" name="tipo_documento"/>
         <label>N° Documento</label>
         <input type="number" name="numero_documento" class="numero_documento"/> 
         <label>Nombres</label>
         <input type="text" name="nombres"/>
         <label>Apellidos</label>
         <input type="text" name="apellidos"/>
         <label>Departamento</label>
         <input type="number" name="departamento_id"/>
         <label>Direccion</label>
         <input type="text" name="direccion"/>
         <label>Correo Electronico</label>
         <input type="text" name="correo_electronico"/>
         <label>Telefono</label>
         <input type="number" name="telefono"/>
         <input type="submit" name="accion" value="Actualizar"/> 
         

 </form>
    </body>
</html>
