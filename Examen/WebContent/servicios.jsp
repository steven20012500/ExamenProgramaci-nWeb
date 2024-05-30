<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="prodServices.*"%>

<title>Servicios</title>
<%@ include file="encabezado.jsp" %>
<section>
<% servicio  servicio  = new servicio();%>
   <%= servicio.consultarTodoInvitado() %>
   </section>
<%@ include file="piePag.jsp" %>
