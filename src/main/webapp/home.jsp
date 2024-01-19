<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
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
                    <a class="nav-link" href="TransaccionServlet">Transaccion</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
    <h1>Bienvenido a Banco Platinum</h1>
    <p>Administra tus finanzas de manera eficiente y segura.</p>

    <!-- Sección de noticias y actualizaciones -->
    <div class="news-section">
        <h2>Últimas Noticias</h2>
        <p>Aquí puedes incluir noticias recientes sobre el banco o el sector financiero.</p>
    </div>

    <!-- Servicios clave -->
    <div class="services-section">
        <h2>Nuestros Servicios</h2>
        <div class="row">
            <div class="col-md-4">
                <h3>Consulta de Saldo</h3>
                <p>Revisa el saldo de tus cuentas fácilmente.</p>
            </div>
            <div class="col-md-4">
                <h3>Transferencias</h3>
                <p>Realiza transferencias a otros bancos de manera rápida.</p>
            </div>
            <div class="col-md-4">
                <h3>Inversiones</h3>
                <p>Explora oportunidades de inversión con nosotros.</p>
            </div>
        </div>
    </div>

    <!-- Sección de personalización -->
    <div class="personalization-section">
        <h2>Para Ti</h2>
        <p>Ofertas y recomendaciones personalizadas.</p>
    </div>

    <a href="index.jsp" class="btn btn-primary">Volver a Iniciar Sesión</a>
</div>
<!-- Scripts de Bootstrap y jQuery -->
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</html>
