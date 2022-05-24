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
                <a href="index.jsp">Tablas SQL</a>
                <link rel="stylesheet" href="css/bootstrap.min.css"/>
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
                 <%! List<Empleado> listaEmpleados;%>
               <% try{
                   
               listaEmpleados=(List<Empleado>) request.getAttribute("empleados");
              Iterator<Empleado> item=listaEmpleados.iterator();
              Empleado empleado= null;
                            while(item.hasNext()){
                             item.next();%>
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
                                <td> <a href="EmpleadoServletController?accion=edit&id=">Editar<a/>
                                 <a href="EmpleadoServletController?accion=eliminar">Eliminar<a/> </td>
                             
                                
                            </tr>
                    </tbody>
                    <% } %>
                </table>
            </div>
                <% }catch(Exception e){}%>
    </body>
</html>

