
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="card" style="padding: 30px 0px 0px 30px;">
            <h4 class="display-8">Listado de Cursos</h4>
            <form method=POST action="/WebSistema/controladorPrincipal">
                <input type=HIDDEN name=accion value="listadoMatriculas">
                <input type=submit name=boton class="btn btn-primary" value="Buscar">

                <table class="table table-striped table-hover">
                    <tbody>
                        <tr><td>
                                Buscar Matricula: <input name="xmat" value="<c:out value='${nro_doc}'/>"
                                                         size=60>
                            </td></tr>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Nro_doc</th>
                                <th scope="col">Alumno</th>
                                <th scope="col">Curso</th>
                                <th scope="col">Total</th>
                                <th scope="col">Estado</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${arrMatriculas}" var="matricula">
                                <tr>
                                    <td><input type=checkbox name='xcod'
                                               value=<c:out value='${matricula.codigo}'/> > </td>
                                    <td><a href="/WebSistema/controladorPrincipal?accion=modificarCurso&xcod=
                                           <c:out value='${matricula.codigo}'/>">
                                            <c:out value='${matricula.nro_doc}' /></a></td>
                                    <td><c:out value='${matricula.alumno}'/></td>
                                    <td><c:out value='${matricula.curso}'/></td>
                                    <td><c:out value='${matricula.monto}'/></td>
                                    <td><c:out value='${matricula.estado}'/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
            </form>
        </div>
    </body>
</html>
