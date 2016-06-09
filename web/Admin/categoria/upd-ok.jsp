<%@page import ="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<% if ((request.getParameter("nome").isEmpty()) || (request.getParameter("nome") == null)) {
        response.sendRedirect("index.jsp");

    } else {
        CategoriaDAO dao = new CategoriaDAO();
        Categoria x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        x.setNome(request.getParameter("nome"));
        dao.alterar(x);
    }


%>

<%@include file="../cabecalho.jsp"%>
<div class="text">

<h2>Categoria</h2>
<p>Categoria atualizada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
