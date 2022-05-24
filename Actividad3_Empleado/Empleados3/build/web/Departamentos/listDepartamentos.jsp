<%-- 
    Document   : listDepartamentos
    Created on : 22-may-2022, 13:24:03
    Author     : luzam
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Departamento"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Departamentos</title>
    </head>
    <body>
        <div>
            <nav>
                <a href="index.jsp">Tablas SQL</a>
                <link rel="stylesheet" href="css/bootstrap.min.css"/>
            </nav>
        </div>

 <h1>Lista De empleados</h1>
        
 

            <div>
                <table class="table">
                    <thead class="table-dark">
                    <th>id</th>
                    <th>Codigo Departamento</th>
                    <th>Nombre Departamentp</th>
                    <th>Fecha creacion</th>
                    <th>Ultima modificacion</th>
                    <th>Acciones</th>

                    </thead>
                    <tbody>
                 <%! List<Departamento> listaDepartamentos;%>
               <% try{
                   
               listaDepartamentos=(List<Departamento>) request.getAttribute("departamentos");
              Iterator<Departamento> item=listaDepartamentos.iterator();
              Departamento departamento= null;
                            while(item.hasNext()){
                             item.next();%>
                            <tr>
                                <td><%= departamento.getId()%></td>
                                <td><%= departamento.getDepartamento_codigo()%></td>
                                <td><%= departamento.getNombre_departamento()%></td>
                                <td><%= departamento.getFecha_hora_crea()%></td>
                                <td><%= departamento.getFecha_hora_modifica()%></td>
                                
                                <td> <a href="DepartamentoServletController?accion=edit&id=">Editar<a/>
                                 <a href="DepartamentoServletController?accion=eliminar">Eliminar<a/> </td>
                             
                                
                            </tr>
                    </tbody>
                    <% } %>
                </table>
            </div>
                <% }catch(Exception e){}%>
    </body>
</html>
