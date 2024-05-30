<%-- respuesta.jsp --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1" import="datos.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Respuesta del formulario</title>
</head>
<body>

    <%-- Recibiendo y mostrando los datos --%>
    <% 
    String nombre=request.getParameter("txtNombre");
    String cedula=request.getParameter("txtCedula");
    String estadoCivil=request.getParameter("cmbECivil");
    String residencia=request.getParameter("rdResidencia");
    String correo=request.getParameter("txtCorreo");
    String clave=request.getParameter("txtClave");
    String foto=request.getParameter("fileFoto");
    String colorFavorito=request.getParameter("color");
    %>
    <h2>Respuestas del formulario:</h2>
    Su nombre es: <%=nombre %><br>
    Cedula: <%=cedula%><br>
    Su estado civil es: <%= estadoCivil%><br>
   <%
   usuario usuario = new usuario();
   usuario.setEstado(Integer.parseInt(estadoCivil));
   usuario.setNombre(nombre);
   usuario.setCedula(cedula);
   usuario.setCorreo(correo);
   usuario.setClave(clave);
   %>
    <%= usuario.toString()%>
    <%= usuario.ingresarCliente()%>
</body>
</html>
