<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session= "true" import="prodServices.*"%>

<title>Modificar servicio</title>
<%@ include file="encabezado.jsp" %>

   <section>
   <form action="modificarSresp.jsp" method="post">
   <article>
    <h1> Modificar Servicio </h1>
     <% servicio  servicio  = new servicio();
   int cod = Integer.parseInt(request.getParameter("cod"));   %>
   <%=servicio.ConsulEditarServicio(cod) %>
    <table>
     <tr><td>Codigo Servicio:</td><td><input type= "text" name="editarcod" value="<%=cod%>"/></td></tr>
	<tr><td>Categoria</td><td><output><%=servicio.getId_tipo()%></output></td></tr>
	<tr><td>Servicio</td><td><input type = "text" name="editarprod" value="<%=servicio.getNombre_serv() %>"/></td></tr>
	<tr><td>Precio</td><td><input type= "text" name="editarprec" value="<%=servicio.getCosto_serv()%>"/></td></tr>
	</table>
	<input type="submit" name="Actualizar"/>
   </article>
   </form>

   </section>
<%@ include file="piePag.jsp" %>
