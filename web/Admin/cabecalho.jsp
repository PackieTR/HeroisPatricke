<%
    if (session.getAttribute("usuario") == null) {
        response.sendRedirect("../login.jsp");
        return;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../style.css">
        <link rel="icon" type="image/png" href="../../images/icon.png"/>
        <title>Herois</title>
    </head>
    <body>
        <div class="banner"></div>
        <div class="menu">
            <ul class="menu">
                <li><a href="../home">Home</a></li>
                <li><a href="../categoria">Categoria</a></li>
                <li><a href="../editora">Editora</a></li>
                <li><a href="../equipe">Equipe</a></li>
                <li><a href="../jogador">Jogador</a></li>
                <li><a href="../regiao">Região</a></li>
                <li><a href="../heroi">Herói</a></li>
            </ul>
        </div>
        <h6>Bem-Vindo, <%%> | Sair</h6>