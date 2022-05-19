<%-- 
    Document   : listCiudades
    Created on : 18-may-2022, 16:52:26
    Author     : luzam
--%>

<%@page import="Modelo.Departamento"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Ciudad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados BD</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <div>
            <nav>
                <a href="#">Tablas SQL</a>
            </nav>
        </div>

 <h1>Lista De Departamentos</h1>
        <%! List<Departamento> listaDepartamentos;%>
        <%
            try{
              listaDepartamentos=(List<Departamento>) request.getAttribute("departamentos");
              Iterator<Departamento> item=listaDepartamentos.iterator();
            %>
            <div>
                <table class="table">
                    <thead>
                    <th>id</th>
                    <th>Codigo departamento</th>
                    <th>Nombre departamento</th>
                    <th>Fecha y hora creacion</th>
                    <th>Ultima modificacion</th>
                    </thead>
                    <tbody class="table-dark">
                        <%  while(item.hasNext()){
                            Departamento departamento= item.next();%>
                            <tr>
                                <td><%= departamento.getId()%></td>
                                <td><%= departamento.getDepartamento_codigo() %></td>
                                <td><%= departamento.getNombre_departamento() %></td>
                                <td><%= departamento.getFecha_hora_crea()%></td>
                                <td><%= departamento.getFecha_hora_modifica() %></td>
                             
                                
                            </tr>
                    </tbody>
                    <% } %>
                </table>
            </div>
                <% }catch(Exception e){
}%>

    </body>
</html>
