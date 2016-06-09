<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>

<%
    JogadorDAO dao = new JogadorDAO();
    Jogador x = dao.buscarPorChavePrimaria(request.getParameter("login"));

    dao.excluir(x);
%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Jogador</h2>
    <p>Jogador excluído com sucesso</p>

    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
