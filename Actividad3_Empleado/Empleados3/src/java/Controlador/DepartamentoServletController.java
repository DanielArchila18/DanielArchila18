/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Departamento;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.DepartamentoImp;


/**
 *
 * @author luzam
 */
public class DepartamentoServletController extends HttpServlet {

 Departamento departamento = new Departamento();
String listar="Departamentos/listDepartamentos.jsp";
String add="Departamentos/addDepartamentos.jsp";
String edit="Empleados/editDepartamentos.jsp";
DepartamentoImp deparImp = new DepartamentoImp();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DepartamentoServletController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DepartamentoServletController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        long departamento_codigo;
        departamento_codigo=Long.parseLong(request.getParameter("numero_documento"));
        String nombre_departamento=request.getParameter("nombres");
        departamento.setDepartamento_codigo(departamento_codigo);
        departamento.setNombre_departamento(nombre_departamento);

        deparImp.add(departamento);
        }catch(Exception e){}
        acceso=listar;
    }
        else if (action.equalsIgnoreCase("edit")) {
        request.setAttribute("idemp", request.getParameter("id"));
        acceso=edit;
    }
        else if (action.equalsIgnoreCase("Actualizar")) {
        long id;
        long departamento_codigo;
        id= Long.parseLong(request.getParameter("id"));
        departamento_codigo=Long.parseLong(request.getParameter("departamento_codigo"));
        String nombre_departamento=request.getParameter("nombre_departamento");

        departamento.setId(id);
        departamento.setDepartamento_codigo(departamento_codigo);
        departamento.setNombre_departamento(nombre_departamento);

        deparImp.edit(departamento);
        acceso=listar;
        
    }
        else if (action.equalsIgnoreCase("eliminar")) {
        long id;
        id=Long.parseLong(request.getParameter("id"));
        departamento.setId(id);
        deparImp.eliminar(id);
        acceso=listar;
    }
        RequestDispatcher Empleados=request.getRequestDispatcher(acceso);
        Empleados.forward(request,response);
    }

    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
