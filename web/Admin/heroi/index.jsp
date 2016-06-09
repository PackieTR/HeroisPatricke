<%@page import="java.util.List"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>

<%
    HeroiDAO dao = new HeroiDAO();
    List<Heroi> lista;
    if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();
    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }


%>
<div class="text">
<h2>Herois</h2>


<div>    
    <form method="post">
        <input type="text" name="filtro" placeholder="Pesquise Aqui"></br>
        <input type="submit"value="Pesquisar">
    </form>
</div>
<%@include file="../novo.jsp"%>

<table>
    <tr>
        <th>
            Nome
        </th>
        <th>
            Codinome
        </th>
        <th>
            Descrição
        </th>
        <th>
            Categoria
        </th>
        <th>
            Editora
        </th>
        <th>
            Região
        </th>
        <th>
            Funções
        </th>


    </tr>
    <%        for (Heroi item : lista) {
    %>
    <tr>
        <td>
            <%=item.getNome()%>
        </td>
        <td>
            <%=item.getCodinome()%>
        </td>
        <td>
            <%=item.getDescricao()%>
        </td>
        <td>
            
            <%  if(item.getCategoria() != null){
                out.print(item.getCategoria().toString());}%>
        </td>

        <td> <%  if(item.getEditora() != null){
                out.print(item.getEditora().toString());}%></td>

        <td> <%  if(item.getRegiao() != null){
                out.print(item.getRegiao().toString());}%></td>

        <td>
            <a href ="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir</a>
            <a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</div>
</body>
</html>
