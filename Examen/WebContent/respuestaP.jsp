<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="prodServices.* "  session="true"%>

<title>Productos</title>
<%@ include file="encabezado.jsp" %>
<section>
 <%
   String nombre = request.getParameter("pd_nombre");
   Double pre = Double.parseDouble(request.getParameter("pd_precio"));
   Integer cant = Integer.parseInt(request.getParameter("pd_cantidad"));
   Integer cat = Integer.parseInt(request.getParameter("pd_categoria"));
   //String foto = request.getPart("pd_imagen");
   String foto = request.getParameter("pd_imagen");
   String foto2="null";
 //  InputStream inputStram = foto.getInputStream();
  // ByteArrayOutputStream ou
   producto  producto  = new producto();  
   out.println(producto.ingresarProducto(cat, nombre, cant, pre, foto));
   /*
   if(actualizado == true){
	  out.println("Producto cargado correctamente");
   } else {
	   out.println("algo salio mal");
   }*/
   %>
 </section>
<%@ include file="piePag.jsp" %>
