<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Heroi"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<% if ((request.getParameter("equipe").isEmpty()) || (request.getParameter("equipe") == null) || (request.getParameter("heroi")==null)||(request.getParameter("heroi").isEmpty())) {
        response.sendRedirect("index.jsp");

    } else {
        EquipeDAO dao = new EquipeDAO();
        Equipe x = new Equipe();
        List<Heroi> hlista=new ArrayList();

        dao.incluir(x);
    }
%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Equipe</h2>
<p>Nova equipe adicionada com sucesso</p>
<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
