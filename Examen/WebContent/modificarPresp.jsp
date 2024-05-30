<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session = "true" import = "prodServices.*"%>

<title>Modificar productos</title>
<%@ include file="encabezado.jsp" %>

 <section>
   <article>
   <h1> Actualización de productos </h1>
   <%
   Integer cod=Integer.parseInt(request.getParameter("editarcod"));
   String nombre = request.getParameter("editarprod");
   Double pre = Double.parseDouble(request.getParameter("editarprec"));
   Integer cant = Integer.parseInt(request.getParameter("editarcant"));
   producto  producto  = new producto(cod,nombre,pre,cant);  
   boolean actualizado = producto.ModificarProducto(producto);
   if(actualizado == true){
	  response.sendRedirect("modificarProdServ.jsp");
   } else {
	   out.println("algo salio mal");
   }
   %>
   </article>
   </section>
<%@ include file="piePag.jsp" %>
