package com.example.evaluacion3;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jmock.Expectations;
import org.jmock.Mockery;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

class TransaccionServletTest {

    private Mockery context;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private RequestDispatcher dispatcher;
    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    @BeforeEach
    void setUp() {
        context = new Mockery();
        request = context.mock(HttpServletRequest.class);
        response = context.mock(HttpServletResponse.class);
        dispatcher = context.mock(RequestDispatcher.class);
        connection = context.mock(Connection.class);
        preparedStatement = context.mock(PreparedStatement.class);
        resultSet = context.mock(ResultSet.class);
    }

    @Test
    void testDoGet() throws Exception {
        // Configurar expectativas para la conexión y la consulta
        context.checking(new Expectations() {{
            oneOf(request).getRequestDispatcher("transaccion.jsp"); will(returnValue(dispatcher));
            allowing(dispatcher).forward(request, response);
            allowing(response).getWriter(); will(returnValue(new PrintWriter(new StringWriter())));
            allowing(connection).prepareStatement(with(any(String.class))); will(returnValue(preparedStatement));
            allowing(preparedStatement).executeQuery(); will(returnValue(resultSet));
            ignoring(resultSet).next(); will(onConsecutiveCalls(returnValue(true), returnValue(false)));
            allowing(resultSet).getString("Rut"); will(returnValue("98765432-1"));
            allowing(resultSet).getString("nombre"); will(returnValue("Ana"));
            allowing(resultSet).getString("apellido"); will(returnValue("Gomez"));
            ignoring(request).setAttribute(with(equal("personas")), with(any(Object.class)));

        }});

        // Simular el llamado al método doGet
        TransaccionServlet servlet = new TransaccionServlet() {
            public Connection getConnection() {
                return connection;
            }
        };
        servlet.doGet(request, response);

        // Verificar que se establezcan los atributos y se redireccione
        context.assertIsSatisfied();
    }
}
