package com.example.evaluacion3;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }



    public void destroy() {
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Obtén los valores del formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Configura la conexión a la base de datos
        String jdbcUrl = "jdbc:mariadb://localhost:3306/cuentas_clientes";
        String dbUser = "root";
        String dbPassword = "root";

        try {
            // Establece la conexión con la base de datos
            Class.forName("org.mariadb.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Consulta la base de datos para verificar las credenciales
            String query = "SELECT * FROM usuario WHERE nombreUsuario = ? AND Password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Credenciales válidas, redirige a la página de éxito
                response.sendRedirect("home.jsp");
            } else {
                // Credenciales incorrectas, redirige a la página de error
                response.sendRedirect("index.jsp");
            }

            // Cierra la conexión a la base de datos
            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            // Maneja cualquier excepción de base de datos o conexión aquí
        }
    }
}