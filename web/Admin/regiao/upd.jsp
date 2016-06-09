
<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    RegiaoDAO dao = new RegiaoDAO();
    Regiao x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));

%>
<div class="text">
    <h2>Regiao</h2>
    <div>

        <form action="upd-ok.jsp" method="post">
            <label>Código</label></br>
            <input type="text" value="<%=request.getParameter("codigo")%>" name ="codigo" readonly></br>
            <label>Nome:</label></br>
            <input type="text" value="<%=x.getNome()%>" name="nome" required/></br>
            <label>Descrição:</label></br>
            <input type="text" value="<%=x.getDescricao()%>" name="descricao"></br></br>
            <input type="submit" value="Enviar"></br>
            <input type="reset"  value="Limpar">


        </form>
    </div>

    </br>

    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
