<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="datos.*" %>

<title>Login</title>
<%@ include file="encabezado.jsp" %>

<section>
<%
usuario usuario=new usuario();
String nlogin=request.getParameter("txtUsuario");
String nclave=request.getParameter("txtClave");
HttpSession sesion=request.getSession(); //Se crea la variable de sesi�n
boolean respuesta=usuario.verificarUsuario(nlogin,nclave);
if (respuesta)
{
sesion.setAttribute("usuario", usuario.getNombre()); //Se a�ade atributos
sesion.setAttribute("perfil", usuario.getId_perfil()); //Se a�ade atributos
response.sendRedirect("menuUsuario.jsp"); //Se redirecciona a una p�gina espec�fica
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
