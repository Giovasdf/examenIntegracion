package com.example.evaluacion3;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/TransaccionServlet")
public abstract class TransaccionServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String jdbcUrl = "jdbc:mariadb://localhost:3306/cuentas_clientes";
        String dbUser = "root";
        String dbPassword = "root";
        List<Persona> personas = new ArrayList<>();

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword)) {
                String query = "SELECT Rut, nombre, apellido FROM persona";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    ResultSet resultSet = preparedStatement.executeQuery();
                    while (resultSet.next()) {
                        String rut = resultSet.getString("Rut");
                        String nombre = resultSet.getString("nombre");
                        String apellido = resultSet.getString("apellido");
                        personas.add(new Persona(rut, nombre, apellido));
                    }
                }

            }
            request.setAttribute("personas", personas);
            request.getRequestDispatcher("transaccion.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recibir los parámetros del formulario
        String rutCliente = request.getParameter("rutCliente");
        String rutDueño = request.getParameter("rutDestinatario");
        String idCuenta = request.getParameter("idCuenta");
        String montoTransferencia = request.getParameter("montoTransferencia");
        String cuentaTransferencia = request.getParameter("cuentaTransferencia");
        String tipoCuenta = request.getParameter("tipoCuenta");

        String jdbcUrl = "jdbc:mariadb://localhost:3306/cuentas_clientes";
        String dbUser = "root";
        String dbPassword = "root";

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Preparar la consulta SQL para insertar la transacción
            String query = "INSERT INTO transaccion (rutCliente, rutDueño, idCuenta, montoTransferencia, cuentaTransferencia, tipoCuenta) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, rutCliente);
            preparedStatement.setString(2, rutDueño);
            preparedStatement.setString(3, idCuenta);
            preparedStatement.setString(4, montoTransferencia);
            preparedStatement.setString(5, cuentaTransferencia);
            preparedStatement.setString(6, tipoCuenta);

            // Ejecutar la consulta
            int result = preparedStatement.executeUpdate();
            if (result > 0) {
                response.sendRedirect("success.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }

            connection.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public abstract Connection getConnection() throws SQLException;


    public static class Persona {
        private String rut;
        private String nombre;
        private String apellido;
        private String direccion;
        private String correo;
        private String telefono;
        private String nombreMascota;

        public Persona() {
        }

        public Persona(String rut, String nombre, String apellido) {
            this.rut = rut;
            this.nombre = nombre;
            this.apellido = apellido;
        }


        public Persona(String rut, String nombre, String apellido, String direccion, String correo, String telefono, String nombreMascota) {
            this.rut = rut;
            this.nombre = nombre;
            this.apellido = apellido;
            this.direccion = direccion;
            this.correo = correo;
            this.telefono = telefono;
            this.nombreMascota = nombreMascota;
        }

        // Getters
        public String getRut() {
            return rut;
        }

        public String getNombre() {
            return nombre;
        }

        public String getApellido() {
            return apellido;
        }

        public String getDireccion() {
            return direccion;
        }

        public String getCorreo() {
            return correo;
        }

        public String getTelefono() {
            return telefono;
        }

        public String getNombreMascota() {
            return nombreMascota;
        }
    }
}


