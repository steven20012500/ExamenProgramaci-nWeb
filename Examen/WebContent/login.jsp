<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<title>Login</title>
<%@ include file="encabezado.jsp" %>


<section>
<form action="loginVerificacion.jsp" method="post" >
    <table>
        <tr><td>Usuario</td><td> <input type="text" name="txtUsuario" required />*</td></tr>
        <tr><td>Clave</td><td> <input type="password" name="txtClave" required />*</td></tr>
    </table>
    <input type="submit" value="Enviar respuestas">
        <button onclick="location.href='registro.jsp'">Registrar</button>
    
</form>
</section>
<%@ include file="piePag.jsp" %>
