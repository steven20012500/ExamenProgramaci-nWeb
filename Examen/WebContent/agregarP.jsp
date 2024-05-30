<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  session="true"%>
<%@ include file="encabezado.jsp" %>
<title>AgregarProductos</title>

<section>
   <form action="respuestaP.jsp" method="post">
   <article>
    <h1> Ingresar Producto </h1>

    <table>
	<tr><td>Categoría</td><td><input type = "text" name="pd_categoria" value=""/></td></tr>
	<tr><td>Producto</td><td><input type = "text" name="pd_nombre" value=""/></td></tr>
	<tr><td>Cantidad</td><td><input type= "text" name="pd_cantidad" value=""/></td></tr>
	<tr><td>Precio</td><td><input type= "text" name="pd_precio" value=""/></td></tr>
	</table>
	<input type="submit" name="Actualizar"/>
   </article>
   </form>

   </section>
<%@ include file="piePag.jsp" %>
   