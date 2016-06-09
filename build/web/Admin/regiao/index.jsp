<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="java.util.List"%>
<%
    RegiaoDAO dao = new RegiaoDAO();
    List<Regiao> lista;

    if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();

    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }
%>


<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Regiao</h2>

    <div>    
        <form method="post">
            <input type="text" name="filtro" placeholder="Pesquise Aqui"> </br>
            <input type="submit"value="Pesquisar">
        </form>
    </div>
    <%@include file="../novo.jsp"%>

    <table>
        <tr>
            <th>
                Código
            </th>
            <th>
                Nome
            </th>
            <th>
                Descrição
            </th>
            <th>
                Funções
            </th>
        </tr>
        <%
            for (Regiao item : lista) {
        %>
        <tr>
            <td>
                <%=item.getCodigo()%>
            </td>
            <td>
                <%=item.getNome()%>
            </td>
            <td>
                <%=item.getDescricao()%>
            </td>
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