<%-- 
    Document   : editDepartamentos
    Created on : 22-may-2022, 13:23:52
    Author     : luzam
--%>

<%@page import="Modelo.Departamento"%>
<%@page import="Negocio.DepartamentoImp"%>
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
       long id = Long.parseLong(request.getParameter("id"));
       Departamento departamento=(Departamento)deparImp.listDepartamento(id);
         
        %>
        <div class="container">	
        <h1>Editar Departamento</h1>
        <form class="form-group" action="DepartamentoServletController?action=actualizar" method="post">
            <div><label>Id</label>
                <input class="form-control" type="text" name="id" readonly="readonly"  value="<%= departamento.getId() %>"  />
            </div>
            <div><label>Codigo Departamento</label>
                <input class="form-control" type="text" name="departamento_codigo" value="<%= departamento.getDepartamento_codigo() %>"  />
            </div>
            <div><label>Nombre Departamento</label>
                <input class="form-control" type="text" name="nombre_departamento" value="<%= departamento.getNombre_departamento() %>"  />
            </div>
            
                <input type="submit" value="Guardar Cambios" class="btn btn-primary">   
                <a class="btn btn-danger" href="DepartamentoServletController?action=regresar">Regresar a lista</a>
                </form>
                </div>

    </body>
</html>
