<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="prodServices.*"%>

<title>Modificar servicio</title>
<%@ include file="encabezado.jsp" %>
<section>
  <h1> Actualización de Servicio </h1>
   <%
   Integer cod=Integer.parseInt(request.getParameter("editarcod"));
   String nombre = request.getParameter("editarprod");
   Double pre = Double.parseDouble(request.getParameter("editarprec"));
   servicio  servicio  = new servicio(cod,nombre,pre);  
   boolean actualizado = servicio.ModificarServicio(servicio);
   if(actualizado == true){
	  response.sendRedirect("modificarProdServ.jsp");
   } else {
	   out.println("algo salio mal");
   }
   %>
   </section>
<%@ include file="piePag.jsp" %>
