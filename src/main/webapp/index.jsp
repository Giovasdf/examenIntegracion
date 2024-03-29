<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <!-- Incluir estilos de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<section class="vh-100">
    <div class="container py-5 h-100">
        <div class="row d-flex align-items-center justify-content-center h-100">
            <div class="col-md-8 col-lg-7 col-xl-6">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
                     class="img-fluid" alt="Imagen de teléfono">
            </div>
            <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
                <form action="hello-servlet" method="POST">
                    <!-- Campo de correo electrónico -->
                    <div class="form-outline mb-4">
                        <input type="text" id="username" class="form-control form-control-lg" name="username" required>
                        <label class="form-label" for="username">Nombre de usuario</label>
                    </div>

                    <!-- Campo de contraseña -->
                    <div class="form-outline mb-4">
                        <input type="password" id="password" class="form-control form-control-lg" name="password" required>
                        <label class="form-label" for="password">Contraseña</label>
                    </div>

                    <div class="d-flex justify-content-around align-items-center mb-4">
                        <!-- Casilla de verificación -->
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="recordar" checked />
                            <label class="form-check-label" for="recordar">Recordarme</label>
                        </div>
                        <a href="#!">¿Olvidaste tu contraseña?</a>
                    </div>

                    <!-- Botón de enviar -->
                    <button type="submit" class="btn btn-primary btn-lg btn-block">Iniciar Sesión</button>

                    <div class="divider d-flex align-items-center my-4">
                        <p class="text-center fw-bold mx-3 mb-0 text-muted">O</p>
                    </div>

                    <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="#!"
                       role="button">
                        <i class="fab fa-facebook-f me-2"></i>Continuar con Facebook
                    </a>
                    <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="#!"
                       role="button">
                        <i class="fab fa-twitter me-2"></i>Continuar con Twitter</a>

                </form>
            </div>
        </div>
    </div>
</section>

<style>
    .divider:after,
    .divider:before {
        content: "";
        flex: 1;
        height: 1px;
        background: #eee;
    }
</style>

<!-- Incluir los scripts de Bootstrap y jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


</body>
</html>
