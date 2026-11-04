<%-- 
    Document   : editarlibro.jsp
    Created on : 3 nov 2026, 9:35:37 p. m.
    Author     : gullo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="biblioteca.librosClass"%>
<%
    librosClass libro = (librosClass) request.getAttribute("libro");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar libro</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
        <script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>   
    </head>
    
    <body class="bg-light">

        <div class="container mt-5">

            <h1 class="text-center mb-4">Editar Libro</h1>

            <div class="card shadow p-4">

                <form action="libroServlet" method="POST">

                    <input type="hidden" name="action" value="UPDATE">

                    <input type="hidden" name="id" value="<%= libro.getId() %>">

                    <div class="mb-3">
                        <label class="form-label">Título:</label>
                        <input type="text" name="titulo" class="form-control"
                               value="<%= libro.getTitulo() %>" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Autor:</label>
                        <input type="text" name="autor" class="form-control"
                               value="<%= libro.getAutor() %>" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Género:</label>

                        <select name="genero" class="form-select" required>
                            <option value="Novela" <%= libro.getGenero().equals("Novela") ? "selected" : "" %>>Novela</option>

                            <option value="Romance" <%= libro.getGenero().equals("Romance") ? "selected" : "" %>>Romance</option>

                            <option value="Fantasía" <%= libro.getGenero().equals("Fantasía") ? "selected" : "" %>>Fantasía</option>

                            <option value="Terror" <%= libro.getGenero().equals("Terror") ? "selected" : "" %>>Terror</option>

                            <option value="Ciencia ficción" <%= libro.getGenero().equals("Ciencia ficción") ? "selected" : "" %>>Ciencia ficción</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Imagen (URL):</label>

                        <input type="text" name="imagen" class="form-control"
                               value="<%= libro.getImagen() %>">
                    </div>

                    <button type="submit" class="btn btn-primary">
                        Guardar Cambios
                    </button>

                    <a href="libroServlet" class="btn btn-secondary">
                        Volver
                    </a>

                </form>
               </div>
        </div>
          </body>
</html>
