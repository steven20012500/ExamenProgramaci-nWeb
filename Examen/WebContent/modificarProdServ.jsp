<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session= "true" import = "prodServices.*"%>

<title>Modificar productos y servicios</title>
<%@ include file="encabezado.jsp" %>

<section>
   <article>
   <h1> Cat�logo de Productos </h1>
   <% producto  producto  = new producto();%>
   <%= producto.consultarTodo() %>
  <h1> Cat�logo de Servicios</h1>
   </article>
   <% servicio servicio  = new servicio();%>
   <%=servicio.consultarTodo() %>
   </section>
<%@ include file="piePag.jsp" %>
