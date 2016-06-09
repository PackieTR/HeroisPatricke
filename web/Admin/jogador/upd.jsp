<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    JogadorDAO dao = new JogadorDAO();
    Jogador x = dao.buscarPorChavePrimaria(request.getParameter("email"));

%>
<div class="text">
    <h2>Jogador</h2>

    <div>
        <form action="upd-ok.jsp" method="post">
            <label>Email:</label></br>
            <input type="text" value="<%=request.getParameter("email")%>"name="email" readonly></br>
            <label>Senha:</label></br>
            <input type="text" value="<%=x.getSenha()%>" name="senha" required></br>
            <label>Login:</label></br>
            <input type="text" value="<%=x.getLogin()%>" name="login" required></br></br>
            <input type="submit" value="Enviar"></br>
            <input type="reset" value="Limpar">

        </form>
    </div>
    </br>
    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
