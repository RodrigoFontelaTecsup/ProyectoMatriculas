<%-- 
    Document   : listadoAreas
    Created on : 25/04/2023, 10:58:49 AM
    Author     : Lenovo
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div class="card" style="width: 50rem;padding: 30px 0px 0px 30px;">
            <h4 class="display-8">Listado de Areas</h4>
            <form method=POST action="/WebSistema/controladorPrincipal">
                <input type=HIDDEN name=accion value="NuevoEliminarArea">
                <input type=submit name=boton class="btn btn-primary" value="Nuevo Registro">
                <input type=submit name=boton class="btn btn-dark" value="Eliminar Registros">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Codigo</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Abreviatura</th>
                            <th scope="col">Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${arrAreas}" var="area">
                            <tr>
                                <td><input type=checkbox name='xcod'
                                           value=<c:out value='${area[0]}'/> > </td>
                                <td><c:out value='${area[0]}'/></td>
                                <td><a href="/WebSistema/controladorPrincipal?accion=modificarArea&xcod=
                                       <c:out value='${area[0]}'/>">
                                        <c:out value='${area[1]}' /></a></td>
                                <td><c:out value='${area[2]}'/></td>
                                <td><c:out value='${area[3]}'/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</html>
