<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  session="true"%>

<title>AgregarUsuario</title>
<%@ include file="encabezado.jsp" %>

<section>
<article>
<form action="agregarUresp.jsp" method="post" >
    <table>
        <tr><td>Nombres y Apellidos</td><td> <input type="text" name="txtNombre" required />*</td></tr>
        <tr><td>Cédula</td><td> <input type="text" name="txtCedula" maxlength="10" required />*</td></tr>
        <tr><td>Perfil</td><td><select name="cmbPerfil">
                    <option value="1">Administrador</option>
                    <option value="2">Cliente</option>
                </select></td></tr>
        <tr><td>Estado Civil</td><td><select name="cmbECivil">
                    <option value="1">Soltero</option>
                    <option value="2">Casado</option>
                </select></td></tr>
 		<tr><td>Correo</td><td><input type="email" name="txtCorreo" placeholder="usuario@nombreProveedor.dominio" /></td></tr>
    </table>
    <input type="submit" value="Enviar respuestas">
</form>
</article>
</section>
<%@ include file="piePag.jsp" %>
