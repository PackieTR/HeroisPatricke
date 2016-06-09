<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%

    if (request.getParameter("codigo") != null) {
        EditoraDAO dao = new EditoraDAO();
        Editora x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        dao.excluir(x);
    } else {
        response.sendRedirect("index.jsp");
    }


%>
<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Editora</h2>
<p>Editora excluída com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>

