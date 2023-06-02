<%-- 
    Document   : entorno
    Created on : 29/04/2023, 10:31:25 AM
    Author     : Lenovo
--%>


<%
    HttpSession misession = (HttpSession) request.getSession();
    if (misession == null || misession.getAttribute("usuario") == null) {
        out.print("<link rel=\"stylesheet\" \n"
                + "              href=\"webjars/bootstrap/5.2.3/css/bootstrap.min.css\" type=\"text/css\" />");
        out.println("<center>");
        out.println("<h3>No tiene permisos para acceder a esta seccion</h3>");
        out.println("<a class='btn btn-primary' href='/WebSistema/index.jsp'>Ir a pagina de acceso</a>");
        out.println("</center>");
        return;
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <frameset rows="80,*" border="0" frameborder="0" y framespacing="40">
          <frame src=titulo.html name=titulo>
          <frameset cols="250,*">
              <frame src=opciones.html name=izquierda>
              <frame src=contenido.html name=derecha>
          </frameset>
       </frameset> 
    </head>
</html>
