package com.example.evaluacion3;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
@WebServlet("/RegistroCuentaServlet")
public class RegistroCuentaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rutCliente = request.getParameter("rutCliente");
        String monto = request.getParameter("monto");
        String ejecutivo = request.getParameter("ejecutivo");

        String jdbcUrl = "jdbc:mariadb://localhost:3306/cuentas_clientes";
        String dbUser = "root";
        String dbPassword = "root";

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            String query = "INSERT INTO CtaCorriente (RutCliente, monto, ejecutivo) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, rutCliente);
            preparedStatement.setBigDecimal(2, new java.math.BigDecimal(monto));
            preparedStatement.setString(3, ejecutivo);

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
}
