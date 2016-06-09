<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>

<%
    
     if(request.getParameter("codigo") != null){
    CategoriaDAO dao=new CategoriaDAO();
    Categoria x= dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    dao.excluir(x);}
     else{
        response.sendRedirect("index.jsp");
     }
%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Categoria</h2>

<p>Categoria excluída com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>

</div>
</body>
</html>
