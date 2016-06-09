<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho.jsp"%>

<%
    CategoriaDAO dao=new CategoriaDAO();
    Categoria x=dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));

%>
<div class="text">
<h2>Categoria</h2>
<div>
    
    <form action="upd-ok.jsp" method="post">
        <label>Código:</label></br>
        <input type="text" value="<%=request.getParameter("codigo")%>" name="codigo" readonly></br>
        <label>Nome:</label></br>
        <input type="text" value="<%=x.getNome()%>"placeholder="Insira o nome da categoria" name="nome"required></br></br>
        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">


    </form>
</div>
</br>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
    </body>
</html>
