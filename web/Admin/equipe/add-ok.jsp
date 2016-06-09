
<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<% if ((request.getParameter("nome").isEmpty()) || (request.getParameter("nome") == null)) {
        response.sendRedirect("index.jsp");

    } else {
        EquipeDAO dao = new EquipeDAO();
        Equipe x = new Equipe();
        x.setNome(request.getParameter("nome"));
            x.setDescricao(request.getParameter("descricao"));

        

        dao.incluir(x);
    }
%>
<div>
<%@include file="../cabecalho.jsp"%>

<h2>Equipe</h2>
<p>Nova equipe adicionada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
