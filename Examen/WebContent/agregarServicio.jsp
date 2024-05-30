<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<title>AgregarServicio</title>
<%@ include file="encabezado.jsp" %>

<section>
   <form action="servicioR.jsp" method="post">
   <article>
    <h1> Ingresar Servicio </h1>

    <table>
	<tr><td>Tipo de servicio</td><td><input type = "text" name="pd_categoria" value=""/></td></tr>
	<tr><td>Servicio</td><td><input type = "text" name="pd_nombre" value=""/></td></tr>
	<tr><td>Costo</td><td><input type= "text" name="pd_precio" value=""/></td></tr>
	</table>
	<input type="submit" name="Actualizar"/>
   </article>
   </form>

   </section>
<%@ include file="piePag.jsp" %>
