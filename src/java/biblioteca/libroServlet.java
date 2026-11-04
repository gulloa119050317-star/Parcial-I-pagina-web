/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package biblioteca;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "libroServlet", urlPatterns = {"/libroServlet"})

public class libroServlet extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    
        {
        librosDAO dao = new librosDAO();
        String action = request.getParameter("action");

        if (action == null) {            
            request.setAttribute("librosList", dao.getAll());
            request.getRequestDispatcher("listarlibros.jsp").forward(request, response);
        }
        else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            dao.delete(id);
            response.sendRedirect("libroServlet");
        }
         else if (action.equals("edit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            librosClass libro = dao.buscarlibro(id);

             request.setAttribute("libro", libro);
             request.getRequestDispatcher("editarlibro.jsp").forward(request, response);
         }
        
        }
        }
    
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
           String action = request.getParameter("action");
           String titulo = request.getParameter("titulo");
           String autor = request.getParameter("autor");
           String genero = request.getParameter("genero");
           String imagen = request.getParameter("imagen");
           

        librosDAO dao = new  librosDAO();
         if ("insert".equals(action)) {
        librosClass libro = new librosClass(0, titulo, autor, genero,imagen);
        dao.insert(libro);
        
        } else if ("UPDATE".equals(action)) {
        int id = Integer.parseInt(request.getParameter("id"));
        librosClass libro = new librosClass(id, titulo, autor, genero, imagen);
        dao.guardarcambios(libro);
        }
         
        response.sendRedirect("libroServlet");
        
    }

   
    }


    

