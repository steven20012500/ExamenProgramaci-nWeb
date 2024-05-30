<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="seguridad.*" session="true"%>
<title>Menu</title>
<%@ include file="encabezado.jsp" %>

<section>
<article>
<%
    String usuario;
    HttpSession sesion = request.getSession();
    
    if (sesion.getAttribute("usuario") == null) { // Se verifica si existe la variable
%>
    <jsp:forward page="login.jsp">
        <jsp:param name="error" value="Debe registrarse en el sistema."/>
    </jsp:forward>
<%
    } else {
        usuario=(String)sesion.getAttribute("usuario"); // Se devuelve los valores de atributos
        int perfil=(Integer)sesion.getAttribute("perfil");
%>
    <h4>Bienvenido <%= usuario %></h4>
<%
        pagina pag=new pagina();
        String menu=pag.mostrarMenu(perfil);
        out.print(menu);
    }
%>

</article>
</section>
<%@ include file="piePag.jsp" %>
