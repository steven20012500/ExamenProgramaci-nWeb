<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="prodServices.*"%>
<title>Categorias</title>
<%@ include file="encabezado.jsp" %>
 <section>
   <article>
   <h1> Reporte por categoria </h1>
   <% servicio  servicio  = new servicio(); %>
      <% producto  producto  = new producto(); %>
   
    <%  Integer categoria = Integer.parseInt(request.getParameter("cmbCategoria")); %>
      <%= servicio.buscarServicioCategoria(categoria) %>
          <%= producto.buscarProductoCategoria(categoria) %>
    
   </article>
     </section>
<%@ include file="piePag.jsp" %>
