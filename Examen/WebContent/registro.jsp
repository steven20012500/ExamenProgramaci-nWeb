<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<title>Registro</title>
<%@ include file="encabezado.jsp" %>
<section>
<article>
<form action="registroR.jsp" method="post" >
    <table>
        <tr><td>Nombres y Apellidos</td><td> <input type="text" name="txtNombre" required />*</td></tr>
        <tr><td>C�dula</td><td> <input type="text" name="txtCedula" maxlength="10" required />*</td></tr>
        <tr><td>Estado Civil</td><td><select name="cmbECivil">
                    <option value="1">Soltero</option>
                    <option value="2">Casado</option>
                </select></td></tr>
 		<tr><td>Correo</td><td><input type="email" name="txtCorreo" placeholder="usuario@nombreProveedor.dominio" /></td></tr>
 		<tr><td>Clave</td><td><input type="password" name="txtClave" required />*</td></tr>
    </table>
    <input type="submit" value="Enviar respuestas">
</form>
</article>
</section>
<%@ include file="piePag.jsp" %>
