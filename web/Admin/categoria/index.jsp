


<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Categoria"%>
<%@page import="java.util.List"%>

<%

   CategoriaDAO dao = new CategoriaDAO();
    List<Categoria> lista;
    if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();

    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }


%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2 class="titulo">Categoria</h2>

<div>    
    <form method="post">
        <input type="text" name="filtro" placeholder="Pesquise Aqui"> </br>
        <input type="submit"value="Pesquisar">
    </form>
</div>

<%@include file="..//novo.jsp"%>






<table>
    <tr>
        <th>
            Código
        </th>
        <th>
            Nome
        </th>
        <th>
            Funções
        </th>
    </tr>
    <%        for (Categoria item : lista) {
    %>
    <tr>
        <td>
            <%out.print(item.getCodigo());%>
        </td>
        <td>
            <%out.print(item.getNome());%>
        </td>
        <td>
            <a href ="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir</a>
            <a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a>
        </td>
    </tr>
    <%}%>

</table>
</div>
</body>

</html>
