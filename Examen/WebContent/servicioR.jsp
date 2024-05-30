<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="prodServices.*"%>
<title>Servicios</title>
<%@ include file="encabezado.jsp" %>
<section>
 <%
   String nombre = request.getParameter("pd_nombre");
   Double pre = Double.parseDouble(request.getParameter("pd_precio"));
   Integer cat = Integer.parseInt(request.getParameter("pd_categoria"));
   servicio  servicio  = new servicio();  
   out.println(servicio.ingresarServicio(cat,nombre,pre));
   %>
 </section>
<%@ include file="piePag.jsp" %>
