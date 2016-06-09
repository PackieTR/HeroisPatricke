
<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%

    if (request.getParameter("codigo") != null) {
        RegiaoDAO dao = new RegiaoDAO();
        Regiao x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        dao.excluir(x);
    } else {
        response.sendRedirect("index.jsp");
    }
%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Regiao</h2>
    <p>Região excluída com sucesso</p>

    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
