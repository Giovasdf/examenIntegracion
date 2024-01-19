<%@ page import="com.example.evaluacion3.TransaccionServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.evaluacion3.TransaccionServlet.Persona" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Transacción</title>
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
<div class="container mt-4">
    <h2>Realizar Transferencia</h2>
    <form action="TransaccionServlet" method="post">
        <!-- Dropdown list para seleccionar el destinatario -->
        <div class="mb-3">
            <label for="rutDestinatario" class="form-label">Destinatario:</label>
            <select class="form-select" id="rutDestinatario" name="rutDestinatario">
                <%
                    List<Persona> personas = (List<Persona>)request.getAttribute("personas");
                    for(Persona persona : personas) {
                %>
                <option value="<%= persona.getRut() %>"><%= persona.getNombre() %> <%= persona.getApellido() %></option>
                <%
                    }
                %>
            </select>
        </div>
        <!-- Campo para el RUT del Cliente (rutCliente) -->
        <div class="mb-3">
            <label for="rutCliente" class="form-label">Tu RUT:</label>
            <input type="text" class="form-control" id="rutCliente" name="rutCliente" required>
        </div>

        <!-- Campo para el ID de la Cuenta (idCuenta) -->
        <div class="mb-3">
            <label for="idCuenta" class="form-label">ID de tu Cuenta:</label>
            <input type="text" class="form-control" id="idCuenta" name="idCuenta" required>
        </div>

        <!-- Campo para el Monto de la Transferencia (montoTransferencia) -->
        <div class="mb-3">
            <label for="montoTransferencia" class="form-label">Monto a Transferir:</label>
            <input type="number" class="form-control" id="montoTransferencia" name="montoTransferencia" required>
        </div>

        <!-- Campo para la Cuenta de Transferencia (cuentaTransferencia) -->
        <div class="mb-3">
            <label for="cuentaTransferencia" class="form-label">Número de Cuenta Destino:</label>
            <input type="text" class="form-control" id="cuentaTransferencia" name="cuentaTransferencia" required>
        </div>

        <!-- Campo para el Tipo de Cuenta (TipoCuenta) -->
        <div class="mb-3">
            <label for="tipoCuenta" class="form-label">Tipo de Cuenta Destino:</label>
            <select class="form-select" id="tipoCuenta" name="tipoCuenta">
                <option value="Corriente">Corriente</option>
                <option value="Ahorro">Ahorro</option>
                <option value="Vista">Vista</option>
            </select>
        </div>


        <!-- Botón para enviar -->
        <button type="submit" class="btn btn-primary">Realizar Transferencia</button>
    </form>
</div>
</body>
</html>
