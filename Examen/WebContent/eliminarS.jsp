<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="prodServices.*"%>

<title>Eliminar Servicio</title>
<%@ include file="encabezado.jsp" %>

  <section>
   <article>
   <h1> Eliminar Servicio </h1>
   <%
   int cod=Integer.parseInt(request.getParameter("cod"));
   out.println(cod);
   servicio  servicio  = new servicio();  
   boolean f = servicio.EliminarServicio(cod);
   if(f == true){
	  response.sendRedirect("modificarProdServ.jsp");
   } else {
	   out.println("algo salio mal");
   }
   %>
   </article>
   </section>
<%@ include file="piePag.jsp" %>
