<%-- 
    Document   : index
    Created on : 22-may-2022, 14:04:12
    Author     : luzam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EMPLEADOS</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <h1>Bienvenido al sistema de empleados</h1>
        <h1>EMPLEADOS</h1>
        <a href="EmpleadoServletController?action=">Consultar Empleados</a>
        <a href="EmpleadoServletController?action=add">Agregar Empleados</a>
        <h1>DEPARTAMENTOS</h1>
        <a href="DepartamentoServletController?accion=listar">Consultar Departamentos</a>
        <a href="DepartamentoServletController?accion=add">Agregar Departamentos</a>
        
    </body>
</html>
