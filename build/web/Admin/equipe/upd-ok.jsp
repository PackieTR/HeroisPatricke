
<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<% if ((request.getParameter("nome").isEmpty()) || (request.getParameter("nome") == null)) {
        response.sendRedirect("index.jsp");

    } else {
        EquipeDAO dao = new EquipeDAO();
        Equipe x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        x.setNome(request.getParameter("nome"));
            x.setDescricao(request.getParameter("descricao"));

        
        
        dao.alterar(x);
        

    }
%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Equipe</h2>
<p>Equipe atualizada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
