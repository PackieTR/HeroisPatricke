<%@page import= "modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>

<%
    if ((request.getParameter("nome").isEmpty()) || (request.getParameter("nome") == null)) {
        response.sendRedirect("index.jsp");

    } else {
        CategoriaDAO dao = new CategoriaDAO();
        Categoria x = new Categoria();
        x.setNome(request.getParameter("nome"));
        dao.incluir(x);
    }

%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Categoria</h2>
<p>Nova categoria adicionada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
