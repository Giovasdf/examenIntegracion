<%--
  Created by IntelliJ IDEA.
  User: Giovanni
  Date: 18-01-2024
  Time: 16:03
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
<form action="RegistroCuentaServlet" method="post" class="p-3">
    <div class="mb-3">
        <label for="rutCliente" class="form-label">RUT Cliente:</label>
        <input type="text" class="form-control" id="rutCliente" name="rutCliente" required>
    </div>
    <div class="mb-3">
        <label for="monto" class="form-label">Monto:</label>
        <input type="number" class="form-control" id="monto" name="monto" required>
    </div>
    <div class="mb-3">
        <label for="ejecutivo" class="form-label">Ejecutivo:</label>
        <input type="text" class="form-control" id="ejecutivo" name="ejecutivo" required>
    </div>
    <button type="submit" class="btn btn-primary">Registrar Cuenta</button>
</form>


</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</html>
