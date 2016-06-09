<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>

<% if ((request.getParameter("nome").isEmpty()) || (request.getParameter("nome") == null)) {
        response.sendRedirect("index.jsp");

    } else {
        RegiaoDAO dao = new RegiaoDAO();
        Regiao x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        x.setNome(request.getParameter("nome"));

        x.setDescricao(request.getParameter("descricao"));

        dao.alterar(x);

    }
%>
<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Regiao</h2>
    <p>Região atualizada com sucesso</p>

    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
