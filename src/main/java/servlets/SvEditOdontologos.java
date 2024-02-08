/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;

@WebServlet(name = "SvEditOdontologos", urlPatterns = {"/SvEditOdontologos"})
public class SvEditOdontologos extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SvEditOdontologos</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvEditOdontologos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int id = Integer.parseInt(request.getParameter("id"));
        Odontologo odo = control.traerOdontologo(id);
        
        HttpSession misession = request.getSession();
        misession.setAttribute("odoEditar", odo);
        
        //System.out.println("El usuario es: " + usu.getNombre_usuario());
        
        response.sendRedirect("editarOdontologos.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");        
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        //String fecha_nac = request.getParameter("fecha nac");
        String especialidad = request.getParameter("especialidad");
        
        Odontologo odo = (Odontologo)request.getSession().getAttribute("odoEditar");
        odo.setDni(dni);
        odo.setNombre(nombre);
        odo.setApellido(apellido);
        odo.setTelefono(telefono);
        odo.setDireccion(direccion);
        odo.setEspecialidad(especialidad);
        
        control.editarOdontologo(odo);
        
        response.sendRedirect("SvOdontologo");
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
