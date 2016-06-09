<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    
    EditoraDAO  dao = new EditoraDAO();
    Editora x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));

%>

<div class="text">
<h2>Editora</h2>

<div>

    <form action="upd-ok.jsp" method="post">
        <label>Código:</label></br>
        <input type="text" value="<%=request.getParameter("codigo")%>" name="codigo" readonly></br>
        <label>Nome:</label></br>
        <input type="text" value="<%=x.getNome()%>" name="nome" required></br>
        <label>Data De Fundação:</label></br>
        <input type="text" value="<%=x.getDataFormatada()%>" name="datafundacao"></br></br>
        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">


    </form>
</div>

</br>


<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
