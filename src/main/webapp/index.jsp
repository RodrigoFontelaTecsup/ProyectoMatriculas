<%-- 
    Document   : index
    Created on : 29/04/2023, 10:47:56 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" 
          href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" type="text/css" />    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Login</title>
    </head>
    <body>
        <div class="container mt-5">
            <form name="form" action="/WebSistema/controladorPrincipal" method="post">
                <input type="hidden" name="accion" value="login">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Usuario</label>
                    <input type="text" name="xnom" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input type="password" name="xcla" class="form-control" id="exampleInputPassword1">
                </div>
                <button type="submit" class="btn btn-primary">Ingresar</button>
            </form>
        </div>
    </body>

</html>

