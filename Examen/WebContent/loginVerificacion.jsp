<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="datos.*" %>

<title>Login</title>
<%@ include file="encabezado.jsp" %>

<section>
<%
usuario usuario=new usuario();
String nlogin=request.getParameter("txtUsuario");
String nclave=request.getParameter("txtClave");
HttpSession sesion=request.getSession(); //Se crea la variable de sesión
boolean respuesta=usuario.verificarUsuario(nlogin,nclave);
if (respuesta)
{
sesion.setAttribute("usuario", usuario.getNombre()); //Se añade atributos
sesion.setAttribute("perfil", usuario.getId_perfil()); //Se añade atributos
response.sendRedirect("menuUsuario.jsp"); //Se redirecciona a una página específica
}
else
{
%>
<jsp:forward page="login.jsp">
<jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo."/>
</jsp:forward>
<%
}
%>
</section>
<%@ include file="piePag.jsp" %>
