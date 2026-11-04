<%-- 
    Document   : listarlibros.jsp
    Created on : 2 nov 2026, 9:02:17 p. m.
    Author     : gullo
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
     <%@page import="biblioteca.librosClass"%>
     <%@page import="java.util.List"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
            <title>Biblioteca</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
            <script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>   
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        </head>
        <body>
             <div class="container mt-5">

                <h1 class="text-center mb-4">Mi Biblioteca</h1>

                <div class="text-end mb-4">
                    <a href="registrar.jsp" class="btn btn-success">

                        Agregar Libro

                    </a>
                </div>

                 <div class="row">


                    <%
                        List<librosClass> libroList =
                            (List<librosClass>) request.getAttribute("librosList");

                        if (libroList != null) {
                            for (librosClass libro : libroList) {
                    %>
                    <div class="col-md-4 mb-4">

                        <div class="card shadow h-100">

                            <% if (libro.getImagen() != null && !libro.getImagen().isEmpty()) { %>
                                <img src="<%= libro.getImagen() %>"
                                     class="card-img-top"
                                     style="height:250px; object-fit:contain;">
                            <% } %>
                             <div class="card-body">

                                <h2 class="card-title">
                                    <%= libro.getTitulo() %>
                                </h2>

                                <p class="card-text">
                                    Autor: <%= libro.getAutor() %>
                                </p>

                                <p class="card-text">
                                    Género: <%= libro.getGenero() %>
                                </p>

                                <a href="libroServlet?action=edit&id=<%= libro.getId() %>"
                                   class="btn btn-warning">
                                    Editar
                                </a>
                                    <a href="libroServlet?action=delete&id=<%= libro.getId() %>"
                                   class="btn btn-danger"
                                   onclick="return confirm('¿Desea eliminar este libro?')">
                                    Eliminar
                                  </a>
                            </div>
                        </div>
                    </div>

                    <%
                            }
                        }
                    %>
                 </div>
            </div>
        </body>
    </html>
