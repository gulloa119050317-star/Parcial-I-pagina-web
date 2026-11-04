<%-- 
    Document   : registrar.jsp
    Created on : 2 nov 2026, 8:51:54 p. m.
    Author     : gullo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar libros</title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B/GM4XqrwHnWXNOWMbloTmrYXZg10cakYGmpfsR/bbzQ6JAJI4ihuyADKLnBgrCe" crossorigin="anonymous">
        <script type="module" src="https://cdn.jsdelivr.net/npm/bootstrap@6.0.0-alpha.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-1a/pXj49ZQ1aHEmrJ+gMw1otqoVsYwlEnlD8mIfY2TV03r20Y0CN7uqx1tQogjPL" crossorigin="anonymous"></script>   
    </head>
    <body class = "big-light">
        <div class="container mt-5">
         <h2 class="text-center mb-4">Agregar Libro</h2>
         <div class="card shadow p-4">
          <form action="libroServlet" method="POST">
               <input type="hidden" name="action" value="insert">
                <div class="mb-3">
                        <label class="form-label">Título:</label>
                        <input type="text" name="titulo" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Autor:</label>
                        <input type="text" name="autor" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Género:</label>
                        <select name="genero" class="form-select" required>
                            <option value="">Seleccione un género</option>
                            <option value="Novela">Novela</option>
                            <option value="Romance">Romance</option>
                            <option value="Fantasía">Fantasía</option>
                            <option value="Terror">Terror</option>
                            <option value="Ciencia ficción">Ciencia ficción</option>
                        </select>
                        </div>
               <div class="mb-3">
                       
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Imagen (URL):</label>
                        <input type="text" name="imagen" class="form-control">
                    </div>
                <button type="submit" class="btn btn-primary">
                        Registrar Libro
                    </button>
                <a href="libroServlet" class="btn btn-secondary">
                        Volver
                    </a>
                </form>
            </div>
        </div>
    </body>
</html>
