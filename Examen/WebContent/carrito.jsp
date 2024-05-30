<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true" import="prodServices.*, java.util.List, java.util.ArrayList"%>
<title>Mi Carrito</title>
<%@ include file="encabezado.jsp" %>

 <section class="container">
        <div class="left">
<form name="listadoproductos" action="carrito.jsp" method="post">
<% 
    producto producto = new producto();
    String tabla = producto.consultarProductos();
    out.print(tabla);

    servicio servicio = new servicio();
    String tabla2 = servicio.consultarServicio();
    out.print(tabla2);
%>
<p><input type="submit" name="button" id="button" value="Agregar"/></p>
</form>
  </div>
   <div class="right"> 
<h2>Mi carrito</h2>
<img src="imagenes/carrito.png" width="100" height="auto" alt="carrito de compras" />
<ul>
<% 
    String[] elementos = request.getParameterValues("productos");
    String[] elementos2 = request.getParameterValues("servicios"); 
    int i = 0;
    if (elementos != null) {
        while (i < elementos.length) {
        //	elementos[i];
          //  out.println("<li>" + elementos[i] + "</li>");
            i++;
        }
    }
        int j = 0;
        if (elementos2 != null) {
            while (j < elementos2.length) {
            //	elementos2[j];
               // out.println("<li>" + elementos2[j] + "</li>");
                j++;
            }
        }

%>
</ul>

<form name="pagar" action="pagar.jsp" method="post">
<ul>
<%
    List<producto> listaElementos = (List<producto>) session.getAttribute("carrito");
    List<servicio> listaElementos2 = (List<servicio>) session.getAttribute("carrito2");

   
    if (listaElementos == null) {
        listaElementos = new ArrayList<producto>();
        session.setAttribute("carrito", listaElementos);
    }
    if (listaElementos2 == null) {
        listaElementos2 = new ArrayList<servicio>();
        session.setAttribute("carrito2", listaElementos2);
    }
    if (elementos != null) {
    		 for (String idproducto : elementos) {
    	            try {
    	            	 String[] partes = idproducto.split("[^\\d]+"); // Separa la cadena en partes basadas en cualquier cosa que no sea un dígito
    	            	 String parteEntera = partes[0]; // Obtiene la parte entera (la primera parte después de la separación)
    	                int id =Integer.parseInt(parteEntera);
    	                producto p = producto.ConsultarProductos(id);
    	                listaElementos.add(p);
    	            } catch (NumberFormatException e) {
    	                out.println("Error al convertir el ID del producto: " + idproducto + "<br>");
    	            }
    	        }
    	}
       
    
    if (elementos2 != null) {
        for (String idservicio : elementos2) {
            try {
             	 String[] partes = idservicio.split("[^\\d]+"); // Separa la cadena en partes basadas en cualquier cosa que no sea un dígito
            	 String parteEntera = partes[0]; // Obtiene la parte entera (la primera parte después de la separación)
                int id = Integer.parseInt(parteEntera);
                servicio s = servicio.ConsultarServicio(id);
                listaElementos2.add(s);
            } catch (NumberFormatException e) {
                out.println("Error al convertir el ID del servicio: " + idservicio + "<br>");
            }
        }
    }
   out.println("<li class="+"highlighted>" + "Productos:"+ "</li>");
    for (producto tmp : listaElementos) {
        out.println("<li>" + tmp.getNombre_pr() + "</li>");
    }
    
%>
</ul>
<ul>
<%
    out.println("<li class="+"highlighted>"+"Servicios:"+"</li>");
    for (servicio tmp : listaElementos2) {
        out.println("<li>" + tmp.getNombre_serv() + "</li>");
    }

%>
</ul>

	<input type="submit" name="button" id="pagar" value="Pagar"/>

</form>
</div>

</section>
<%@ include file="piePag.jsp" %>

