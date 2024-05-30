<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "prodServices.*"%>
<title>Categorias</title>
<%@ include file="encabezado.jsp" %>
<section>
<form action="categoriaR.jsp" method="post" >
 <% 
        categoria categoria = new categoria();
        String opcionesCategoria = categoria.mostrarCategoria();
        out.println(opcionesCategoria);
    %>
 <input type="submit" value="Enviar respuestas">
</form>
</section>
<%@ include file="piePag.jsp" %>
