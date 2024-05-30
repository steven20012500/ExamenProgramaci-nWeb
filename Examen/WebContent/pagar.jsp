<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="prodServices.*, java.util.List, java.util.ArrayList"%>

<title>Pagar</title>
<%@ include file="encabezado.jsp" %>
<section>
<h1>Total del Carrito</h1>

<table border="1">
  <tr>
    <th>Producto</th>
    <th>Precio</th>
  </tr>
  <% producto producto = new producto();
   
%>
<%
// Obtener la lista de elementos del carrito desde la sesión
List<producto> listaElementos = (List<producto>) session.getAttribute("carrito");
List<servicio> listaElementos2 = (List<servicio>) session.getAttribute("carrito2");

double total = 0.0;

if (listaElementos != null ) {
    for (producto elemento : listaElementos) {
     double precio = elemento.getPrecio_pr();
      total += precio;
 
%>
  <tr>
    <td><%= elemento.getNombre_pr() %></td>
    <td>$<%= precio %></td>
  </tr>
<%
    }
}
if (listaElementos2 != null ) {
    for (servicio elemento2 : listaElementos2) {
     double precio = elemento2.getCosto_serv();
      total += precio;
 
%>
  <tr>
    <td><%= elemento2.getNombre_serv() %></td>
    <td>$<%= precio %></td>
  </tr>
<%
    }
}
%>
</table>

<h2>Total: $<%= total %></h2>
</section>

<%@ include file="piePag.jsp" %>
