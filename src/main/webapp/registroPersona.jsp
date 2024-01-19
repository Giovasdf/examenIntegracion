<%--
  Created by IntelliJ IDEA.
  User: Giovanni
  Date: 18-01-2024
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Éxito</title>
    <!-- Enlaza los estilos de Bootstrap desde el CDN -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Banco Platinum</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registroUsuario.jsp">Registro de Usuario</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registroPersona.jsp">Registro de Persona</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registroCuenta.jsp">Registro de Cuenta Corriente</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="transaccion.jsp">Transaccion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<form action="RegistroPersonaServlet" method="post" class="p-3">
    <div class="mb-3">
        <label for="rut" class="form-label">RUT:</label>
        <input type="text" class="form-control" id="rut" name="rut" required>
    </div>
    <div class="mb-3">
        <label for="nombre" class="form-label">Nombre:</label>
        <input type="text" class="form-control" id="nombre" name="nombre" required>
    </div>
    <div class="mb-3">
        <label for="apellido" class="form-label">Apellido:</label>
        <input type="text" class="form-control" id="apellido" name="apellido" required>
    </div>
    <div class="mb-3">
        <label for="direccion" class="form-label">Dirección:</label>
        <input type="text" class="form-control" id="direccion" name="direccion" required>
    </div>
    <div class="mb-3">
        <label for="correo" class="form-label">Correo:</label>
        <input type="email" class="form-control" id="correo" name="correo" required>
    </div>
    <div class="mb-3">
        <label for="telefono" class="form-label">Teléfono:</label>
        <input type="text" class="form-control" id="telefono" name="telefono" required>
    </div>
    <div class="mb-3">
        <label for="nombreMascota" class="form-label">Nombre de Mascota:</label>
        <input type="text" class="form-control" id="nombreMascota" name="nombreMascota">
    </div>
    <button type="submit" class="btn btn-primary">Registrar Persona</button>
</form>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>

