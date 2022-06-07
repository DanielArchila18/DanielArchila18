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
         <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <div>
            <nav>
            <a class="btn btn-primary" href="DepartamentoServletController?action=add">Agregar empleado</a>
                <a class="btn btn-danger" href="index.jsp">Regresar a index</a>
               
            </nav>
        </div>

 <h1>Lista De Departamentos</h1>
        
 

            <div>
                <table class="table">
                    <thead class="table-dark">
                    <th>id</th>
                    <th>Codigo Departamento</th>
                    <th>Nombre Departamento</th>
                    <th>Fecha creacion</th>
                    <th>Ultima modificacion</th>
                    <th>Acciones</th>

                    </thead>
                    <tbody>
                 <%! List<Departamento> listDep;%>
               <% try{
                   
               listDep=(List<Departamento>)request.getAttribute("listDep");
              Iterator<Departamento> item=listDep.iterator();
              
                            while(item.hasNext()){
                            	Departamento departamento= item.next();%>
                            <tr>
                                <td><%= departamento.getId() %></td>
                                <td><%= departamento.getDepartamento_codigo() %></td>
                                <td><%= departamento.getNombre_departamento() %></td>
                                <td><%= departamento.getFecha_hora_crea() %></td>
                                <td><%= departamento.getFecha_hora_modifica() %></td>
             
                                <td> <a href="DepartamentoServletController?action=edit&id=<%= departamento.getId() %>">Editar</a>
                                 <a href="DepartamentoServletController?action=eliminar&id=<%= departamento.getId()%>">Eliminar</a> </td>
                             
                                
                            </tr>
                    </tbody>
                    <% } %>
                </table>
            </div>
                <% }catch(Exception e){
                	e.printStackTrace();
                }%>
    </body>
</html>
