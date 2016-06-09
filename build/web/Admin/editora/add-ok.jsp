<%@page import="java.text.SimpleDateFormat"%>
<%@page import="modelo.Editora"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="java.util.Date"%>

<% if ((request.getParameter("nome").isEmpty()) || (request.getParameter("nome") == null)) {
        response.sendRedirect("index.jsp");

    } else {
        EditoraDAO dao = new EditoraDAO();
        Editora x = new Editora();
        x.setNome(request.getParameter("nome"));

        if(request.getParameter("datafundacao") != null && request.getParameter("datafundacao").isEmpty() == false ){
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Date data = sdf.parse(request.getParameter("datafundacao"));
        x.setDatafundacao(data);
        }
        
        dao.incluir(x);

    }
%>
<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Editora</h2>
<p>Nova editora adicionada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>

