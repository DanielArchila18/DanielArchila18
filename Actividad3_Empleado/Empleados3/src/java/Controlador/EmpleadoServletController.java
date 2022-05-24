/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Empleado;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.EmpleadoImp;

/**
 *
 * @author luzam
 */



public class EmpleadoServletController extends HttpServlet {
Empleado empleado = new Empleado();
String listar="Empleados/listEmpleados.jsp";
String add="Empleados/addEmpleados.jsp";
String edit="Empleados/editEmpleados.jsp";
EmpleadoImp empleaImp= new EmpleadoImp();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }

    }


@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
        acceso=listar;
        }
        else if (action.equalsIgnoreCase("add")) {
        acceso=add;
    }
        else if (action.equalsIgnoreCase("Agregar")) {
        try{
        long numero_documento;
        long departamento_id;
        long telefono;
        String tipo_documento=request.getParameter("tipo_documento");
        numero_documento=Long.parseLong(request.getParameter("numero_documento"));
        String nombres=request.getParameter("nombres");
        String apellidos=request.getParameter("apellidos");
        departamento_id=Long.parseLong(request.getParameter("departamento_id"));
        String direccion=request.getParameter("direccion");
        String correo_electronico=request.getParameter("correo_electronico");
        telefono=Long.parseLong(request.getParameter("telefono"));
        empleado.setTipo_documento(tipo_documento);
        empleado.setNumero_documento(numero_documento);
        empleado.setNombres(nombres);
        empleado.setApellidos(apellidos);
        empleado.setDepartamento_id(departamento_id);
        empleado.setDireccion(direccion);
        empleado.setCorreo_electronico(correo_electronico);
        empleado.setTelefono(telefono);
        empleaImp.add(empleado);
        }catch(Exception e){}
        acceso=listar;
    }
        else if (action.equalsIgnoreCase("edit")) {
        request.setAttribute("idemp", request.getParameter("id"));
        acceso=edit;
    }
        else if (action.equalsIgnoreCase("Actualizar")) {
        long id;
        long numero_documento;
        long departamento_id;
        long telefono;
        id= Long.parseLong(request.getParameter("id"));
        String tipo_documento=request.getParameter("tipo_documento");
        numero_documento=Long.parseLong(request.getParameter("numero_documento"));
        String nombres=request.getParameter("nombres");
        String apellidos=request.getParameter("apellidos");
        departamento_id=Long.parseLong(request.getParameter("departamento_id"));
        String direccion=request.getParameter("direccion");
        String correo_electronico=request.getParameter("correo_electronico");
        telefono=Long.parseLong(request.getParameter("telefono"));
        empleado.setId(id);
        empleado.setTipo_documento(tipo_documento);
        empleado.setNumero_documento(numero_documento);
        empleado.setNombres(nombres);
        empleado.setApellidos(apellidos);
        empleado.setDepartamento_id(departamento_id);
        empleado.setDireccion(direccion);
        empleado.setCorreo_electronico(correo_electronico);
        empleado.setTelefono(telefono);
        empleaImp.edit(empleado);
        acceso=listar;
        
    }
        else if (action.equalsIgnoreCase("eliminar")) {
        long id;
        id=Long.parseLong(request.getParameter("id"));
        empleado.setId(id);
        empleaImp.eliminar(id);
        acceso=listar;
    }
        RequestDispatcher Empleados=request.getRequestDispatcher(acceso);
        Empleados.forward(request,response);
    }

    
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
