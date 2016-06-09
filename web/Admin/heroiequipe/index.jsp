<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@include file="../cabecalho.jsp"%>



<%
    EquipeDAO dao = new EquipeDAO();
    List<Equipe> lista;
    if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();
    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }


%>
<div class="text">
    <h2>Equipe e Heroi</h2>


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
                Codinome do Heroi
            </th>
            <th>
                Nome da Equipe
            </th>

            <th>
                Funções
            </th>
        </tr>
        <%        for (Equipe item : lista) {
                for (Heroi x : item.getHeroiList()) {
        %>
        <tr>
            <td>
                <%=x.getCodinome()%>
            </td>
            <td>
                <%=item.getNome()%>
            </td>
            <td>
                <a href ="del-ok.jsp?codigo=<%=item.getCodigo()%>">Excluir</a>
                <a href="upd.jsp?codigo=<%=item.getCodigo()%>">Editar</a>
            </td>
        </tr>
        <%}

            }
        %>
    </table>
</div>
</body>
</html>
