<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@page import="java.util.List"%>
<%
    JogadorDAO dao = new JogadorDAO();
    List<Jogador> lista;

    if (request.getParameter("filtro") == null || request.getParameter("filtro").isEmpty()) {
        lista = dao.listar();

    } else {
        lista = dao.filtrar(request.getParameter("filtro"));
    }
%>


<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Jogador</h2>

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
                Email
            </th>
            <th>
                Senha
            </th>
            <th>
                Login
            </th>
            <th>
                Funções
            </th>
        </tr>
        <%
            for (Jogador item : lista) {
        %>
        <tr>
            <td>
                <%=item.getEmail()%>
            </td>
            <td>
                <%=item.getSenha()%>
            </td>
            <td>
                <%=item.getLogin()%>
            </td>
            <td>
                <a href ="del-ok.jsp?login=<%=item.getLogin()%>">Excluir</a>
                <a href="upd.jsp?login=<%=item.getLogin()%>">Editar</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
</body>
</html>
