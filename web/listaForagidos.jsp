
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="maria.persistencia.FichaPoliciaDao"%>
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
                    <h1>Delegacia <small>listar foragidos</small></h1>
                    <br>    
                </div>
            
            
            
        <div class="table-responsive"> 
          <table class="table table-striped table-bordered">
            <thead>
            <td>Nome</td>
            <td>CPF</td>
            <td>Residencia</td>
            <td>Tipo de Delito</td>
            <td>Data</td>
            <td>Hora</td>
            <td>Local</td>
            <td>Estado</td>
            <td>Avatar</td>
        </thead>
        <%
            FichaPoliciaDao dao = new FichaPoliciaDao();
            List<FichaPolicial> delitos = dao.getListaForagidos();

            for (FichaPolicial delito : delitos) {
        %>
        <tr>
            <td> <%= delito.getNome()%></td>
            <td> <%= delito.getCpf()%> </td>
            <td> <%= delito.getResidencia()%> </td>
            <td> <%= delito.getDelito()%> </td>
            <td> <%= delito.getData()%> </td>
            <td> <%= delito.getHora()%> </td>
            <td> <%= delito.getLocal()%> </td>
            <td> <%= delito.getEstado()%> </td>
            <td> <img src="<%= delito.getAvatar()%>" alt="avatarum" class="img-responsive"  > </td>

        </tr>
        <%
            }
        %>
    </table>
 
        </div>
</body>
</html>
