
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
            <h4 class="display-8"><c:out value='${titulo}'/></h4>
            <form name=mod_opcion method=POST action="/WebSistema/controladorPrincipal">
                <input type=HIDDEN name=accion value="GRABAR_CURSO">
                <input type=hidden name=operacion value='<c:out value='${operacion}'/>'>
                <input type=hidden name=xcod value="<c:out value='${curso.codigo}'/>">
                <table class="table table-striped table-hover">
                    <tbody>
                        <tr><th>Codigo: </th>
                            <td><c:out value='${curso.codigo}'/> </td> </tr>
                        <tr><th>Nombre: </th>
                            <td><input name=xnom value="<c:out value='${curso.nombre}'/>"
                                       size=60></td></tr>
                        <tr><th>Costo:</th>
                            <td><input name=xcosto value="<c:out value='${curso.costo}'/>"
                                       size=60></td></tr>
                        <tr><th>Fecha de Inicio:</th>
                            <td><input type="date" dateformat="y M d" name=xf_ini value="<c:out value='${curso.fec_ini}'/>"
                                       size=30></td></tr>
                        <tr><th>Fecha de Fin:</th>
                            <td><input type="date" dateformat="y M d" name=xf_fin value="<c:out value='${curso.fec_fin}'/>"
                                       size=30></td></tr>
                        <tr><th>Duracion:</th>
                            <td><input name=xdura value="<c:out value='${curso.duracion}'/>"
                                       size=30></td></tr>
                        <tr><th>Sesiones:</th>
                            <td><input name=xse value="<c:out value='${curso.sesiones}'/>"
                                       size=30></td></tr>
                        <tr><th>Capacidad:</th>
                            <td><input name=xcapa value="<c:out value='${curso.capacidad}'/>"
                                       size=30></td></tr>
                        <tr><th>Inscritos:</th>
                            <td><input name=xins value="<c:out value='${curso.inscritos}'/>"
                                       size=30></td></tr>
                        <tr><th>Estado</th>
                            <td><c:choose>
                                    <c:when test="${curso.estado == 'X'}">
                                        <input type=radio name=xest value=A>Activo
                                        <input type=radio name=xest value=X checked>Inactivo
                                    </c:when>
                                    <c:otherwise>
                                        <input type=radio name=xest value=A checked>Activo
                                        <input type=radio name=xest value=X>Inactivo
                                    </c:otherwise>
                                </c:choose>
                            </td></tr>
                    </tbody>
                </table>
                <input type=submit name=boton class="btn btn-primary" value="GRABAR">
                <input type=submit name=boton class="btn btn-dark" value="CANCELAR">
            </form>
        </div>
    </body>
</html>
