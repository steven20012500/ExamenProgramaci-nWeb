<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<title>Cerrar sesion</title>
<%@ include file="encabezado.jsp" %>
<section>
<%
  HttpSession sesionOk = request.getSession();
  sesionOk.invalidate();
%>
<jsp:forward page="login.jsp"/>
</section>
<%@ include file="piePag.jsp" %>
