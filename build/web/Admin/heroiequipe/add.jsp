<%@page import="dao.HeroiDAO"%>
<%@page import="modelo.Heroi"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@page import="java.util.List"%>
<%@include file="../cabecalho.jsp" %>

<%
    EquipeDAO edao = new EquipeDAO();
    List<Equipe> elista = edao.listar();

    HeroiDAO hdao = new HeroiDAO();
    List<Heroi> hlista = hdao.listar();
%>
<div class="text">
<h2>Heroi e Equipe</h2>
<form action="add-ok.jsp" method="post">
    
    <label>Equipe</label></br>
    <select name="equipe" required>
        <%
            for (Equipe eitem : elista) {
        %>
        <option value="<%=eitem.getCodigo()%>"><%=eitem.getNome()%></option>
        <%
            }
        %>
    </select></br>

    <label>Heroi</label></br>
    <select name="heroi" required>
        <%
            for (Heroi hitem : hlista) {
        %>
        <option value="<%=hitem.getCodigo()%>"><%=hitem.getCodinome()%></option>
        <%
            }
        %>
    </select></br></br>
    <input type="send" value="Enviar"/></br>
    <input type="reset" value="Limpar"/></br>
</form>

<div id="botao">
    <a href="index.jsp">Voltar</a>
</div>
</div>
</body>
</html>
