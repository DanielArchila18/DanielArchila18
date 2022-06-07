<%-- 
    Document   : listCiudades
    Created on : 22-may-2022, 13:22:28
    Author     : luzam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="Modelo.Empleado"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultados BD</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
      <div>
            <nav>
              <a class="btn btn-primary" href="EmpleadoServletController?action=add">Agregar empleado</a>
                <a class="btn btn-danger" href="index.jsp">Regresar a index</a>
                
            </nav>
        </div>

 <h1>Lista De empleados</h1>
        
 

            <div>
                <table class="table">
                    <thead class="table-dark">
                    <th>id</th>
                    <th>Tipo documento</th>
                    <th>Numero documento</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Id departamento</th>
                    <th>Direccion</th>
                    <th>Correo electronico</th>
                    <th>Telefono</th>
                    <th>Fecha y hora creacion</th>
                    <th>Ultima modificacion</th>
                    <th>Acciones</th>
                    </thead>
                    <tbody>
                 <%! List<Empleado> listEmp;%>
               <% try{
                   
               listEmp=(List<Empleado>) request.getAttribute("listEmp");
              Iterator<Empleado> item=listEmp.iterator();
              
                            while(item.hasNext()){
                            	Empleado empleado= item.next();%>
                            <tr>
                                <td><%= empleado.getId()%></td>
                                <td><%= empleado.getTipo_documento()%></td>
                                <td><%= empleado.getNumero_documento()%></td>
                                <td><%= empleado.getNombres()%></td>
                                <td><%= empleado.getApellidos()%></td>
                                <td><%= empleado.getDepartamento_id()%></td>
                                <td><%= empleado.getDireccion()%></td>
                                <td><%= empleado.getCorreo_electronico() %></td>
                                <td><%= empleado.getTelefono()%></td>
                                <td><%= empleado.getFecha_hora_crea()%></td>
                                <td><%= empleado.getFecha_hora_modifica()%></td>
                                <td> <a href="EmpleadoServletController?action=edit&id=<%= empleado.getId()%>">Editar<a/>
                                 <a href="EmpleadoServletController?action=eliminar&id=<%= empleado.getId()%>">Eliminar<a/> </td>
                             
                                
                            </tr>
                    </tbody>
                    <% } %>
                </table>
            </div>
                <% }catch(Exception e){}%>
    </body>
</html>

