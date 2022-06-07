<%-- 
    Document   : editCiudades
    Created on : 22-may-2022, 13:22:08
    Author     : luzam
--%>

<%@page import="Modelo.Empleado"%>
<%@page import="Negocio.EmpleadoImp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Empleados</title>
         <link rel="stylesheet" href="css/bootstrap.min.css"/>
    </head>
    <body>
        <% EmpleadoImp empleaImp= new EmpleadoImp();
        long id = Long.parseLong(request.getParameter("id"));
        Empleado empleado=(Empleado)empleaImp.listEmpleados(id);
        %>
        <div class="container">
        <h1>Editar Empleado</h1>
        <form action="EmpleadoServletController?action=actualizar" method="post">
            <div><label>Id</label>
                <input class="form-control" type="text" name="id" readonly="readonly"  value="<%= empleado.getId() %>" />
            </div>
            <div><label>Tipo Documento</label>
                <input class="form-control" type="text" name="tipo_documento" value="<%= empleado.getTipo_documento() %>"  />
            </div>
            <div><label>Numero Documento</label>
                <input class="form-control" type="text" name="numero_documento" value="<%= empleado.getNumero_documento() %>" />
          
            </div>
            <div><label>Nombres</label>
                <input class="form-control" type="text" name="nombres" value="<%= empleado.getNombres() %>" />
            </div>
            <div><label>Apellidos</label>
                <input class="form-control" type="text" name="apellidos" value="<%= empleado.getApellidos() %>" />
            </div>
            <div><label>Id departamento</label>
                <input class="form-control" type="text" name="departamento_id" value= "<%= empleado.getDepartamento_id() %>"/>
            </div>
            <div><label>Direccion</label>
                <input class="form-control" type="text"  name="direccion" value="<%= empleado.getDireccion() %>"/>
            </div>
             <div><label>Correo electronico</label>
                 <input class="form-control" type="text" name="correo_electronico" value="<%= empleado.getCorreo_electronico() %>" />
            </div>
             <div><label>Telefono</label>
                 <input class="form-control" type="text" name="telefono" value="<%= empleado.getTelefono() %>" /> 
            </div>
             <div>
                <input type="submit" value="Guardar Cambios" class="btn btn-primary">   
                <a class="btn btn-danger" href="EmpleadoServletController?action=regresar">Regresar a lista</a>
            </div>   
            </form>
            

         </div>
    </body>
</html>
