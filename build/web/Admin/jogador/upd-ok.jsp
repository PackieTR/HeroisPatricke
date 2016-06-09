<%@page import="dao.JogadorDAO"%>
<%@page import="modelo.Jogador"%>
<%
    if ((request.getParameter("email") == null || request.getParameter("senha") == null || request.getParameter("login") == null) || (request.getParameter("email").isEmpty() || request.getParameter("senha").isEmpty() || request.getParameter("login").isEmpty())) {
        response.sendRedirect("index.jsp");

    } else {
        JogadorDAO dao = new JogadorDAO();
        Jogador x = dao.buscarPorChavePrimaria(request.getParameter("email"));

        x.setLogin(request.getParameter("login"));
        x.setSenha(request.getParameter("senha"));

        dao.alterar(x);
    }
%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Jogador</h2>
    <p>Jogador atualizado com sucesso</p>

    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
