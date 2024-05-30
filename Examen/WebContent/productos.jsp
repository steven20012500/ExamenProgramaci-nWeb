<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "prodServices.*"%>

<title>Productos</title>
<%@ include file="encabezado.jsp" %>
<section>
<% producto  producto  = new producto();%>
   <%= producto.consultarTodoInvitado() %>
</section>
<%@ include file="piePag.jsp" %>
