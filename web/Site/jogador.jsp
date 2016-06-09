<%@page import="java.util.List"%>
<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%
    JogadorDAO dao = new JogadorDAO();
    List<Jogador> x;
    if (request.getParameter("filtro") != null) {
        x = dao.filtrar(request.getParameter("filtro"));
    } else {
        x = dao.listar();
    }
%>
<%@include file="header.jsp"%>
<div class="text">
    <h2>Jogadores Cadastrados:</h2>
    <%for (Jogador item : x) {%>
    <div>
        <h4><%=item.getLogin()%></h4>
        <h6><%=item.getEmail()%></h6>
        <br/>
    </div>
    <%}%>
    <br/>
</div>
</body>
</html>