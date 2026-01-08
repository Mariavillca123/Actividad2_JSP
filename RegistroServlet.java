package controlador;

import datos.BaseDatosSimulada;
import modelo.Estudiante;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if ("guardar".equals(accion)) {

            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String curso = request.getParameter("curso");

            Estudiante e = new Estudiante(nombre, correo, curso);
            BaseDatosSimulada.agregar(e);

            response.sendRedirect("index.jsp");

        } else if ("mostrar".equals(accion)) {

            request.setAttribute("lista", BaseDatosSimulada.obtenerLista());
            request.getRequestDispatcher("listar.jsp")
                   .forward(request, response);
        }
    }
}
