<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session = "true" import = "prodServices.*"%>

<title>Modificar Productos</title>
<%@ include file="encabezado.jsp" %>

   <section>
   <form action="modificarPresp.jsp" method="post">
   <article>
    <h1> Modificar Productos </h1>
     <% producto  producto  = new producto();
   int cod = Integer.parseInt(request.getParameter("cod"));   %>
   <%=producto.ConsulEditarProductos(cod) %>
    <table>
     <tr><td>Codigo Producto:</td><td><input type= "text" name="editarcod" value="<%=cod%>"/></td></tr>
	<tr><td>Categoria</td><td><output><%=producto.getId_cat()%></output></td></tr>
	<tr><td>Producto</td><td><input type = "text" name="editarprod" value="<%=producto.getNombre_pr() %>"/></td></tr>
	<tr><td>Cantidad</td><td><input type= "text" name="editarcant" value="<%=producto.getCantidad_pr()%>"/></td></tr>
	<tr><td>Precio</td><td><input type= "text" name="editarprec" value="<%=producto.getPrecio_pr()%>"/></td></tr>
	</table>
	<input type="submit" name="Actualizar"/>
   </article>
   </form>

   </section>
<%@ include file="piePag.jsp" %>
