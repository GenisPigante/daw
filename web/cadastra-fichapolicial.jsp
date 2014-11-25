
<%@page import="maria.negocios.FichaPolicial"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

            <!-- Latest compiled and minified CSS -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

            <!-- Optional theme -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">

                    <nav class="navbar navbar-inverse" style="margin-bottom: 0px;">
                        <div class="container-fluid">
                          <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarContent">
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                            </button>
                            <a href="index.jsp" class="navbar-brand">Delegacia</a>
                          </div>
                          <div class="collapse navbar-collapse" id="navbarContent">
                            <ul class="nav navbar-nav">
                              <li><a href="cadastra-fichapolicial.jsp">Cadastrar Meliante</a></li>
                              <li><a href="altera.jsp">Alterar ficha</a></li>
                              <li><a href="listar.jsp.jsp">Listar Todos</a></li>
                              <li><a href="listaForagidos.jsp">Listar Foragidos</a></li>
                              <li><a href="remover.jsp">Remover</a></li>
                              

                            </ul>
                          </div>
                        </div>
                      </nav>
                <div class="jumbotron">
                    <h1>Delegacia <small>cadastrar</small></h1>
                    <br>    
                </div>

            
                    <form action="mvc">
                        <input type="text" style="display: none;" value="AdicionaContatoLogic" name="logica" />
                        <span class="label label-default">Nome</span> <input type="text" class="form-control" id="usr" name="nome"><br><br>
                        <span class="label label-default">CPF</span> <input type="text" class="form-control" id="usr" name="cpf"/><br><br>
                        <span class="label label-default">Residencia</span> <input type="text" class="form-control" id="usr" name="residencia"/><br><br>
                        <span class="label label-default">Delito</span> <input type="text" class="form-control" id="usr" name="delito"/><br><br>
                        <span class="label label-default">Data</span> <input type="text" class="form-control" id="usr" name="data"/><br><br>
                        <span class="label label-default">Hora</span> <input type="text" class="form-control" id="usr" name="hora"/><br><br>
                        <span class="label label-default">Local</span> <input type="text" class="form-control" id="usr" name="local"/><br><br>
                        <span class="label label-default">Estado</span> <input type="text" class="form-control" id="usr" name="estado"/><br><br>
                        <span class="label label-default">Avatar</span> <input type="text" class="form-control" id="usr" name="avatar"/><br><br>
                        <p class="pager" style="line-height: 70px;">
                            
                            <input type="submit" class="btn btn-inverse btn-large" value="Submit"/>
                        </p>
                    </form>
                          
        </div>
    </body>
</html>
