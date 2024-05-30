<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="datos.*"  session="true"%>

<title>AgregarUsuario</title>
<%@ include file="encabezado.jsp" %>

<section>
 <% 
    String nombre=request.getParameter("txtNombre");
    String cedula=request.getParameter("txtCedula");
    String estadoCivil=request.getParameter("cmbECivil");
    String residencia=request.getParameter("rdResidencia");
    String correo=request.getParameter("txtCorreo");
    String clave=request.getParameter("txtClave");
    String foto=request.getParameter("fileFoto");
    String colorFavorito=request.getParameter("color");
    String perfil=request.getParameter("cmbPerfil");
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
   usuario.setId_perfil(Integer.parseInt(perfil));
   out.println(usuario.agregarUser());
   %>
   
</section>
<%@ include file="piePag.jsp" %>
