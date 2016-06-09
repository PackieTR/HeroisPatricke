
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="modelo.Editora"%>
<% if ((request.getParameter("nome").isEmpty()) || request.getParameter("nome") == null) {
        response.sendRedirect("index.jsp");

    } else {
        EditoraDAO dao= new EditoraDAO();
        Editora x=dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
        x.setNome(request.getParameter("nome"));
        
        if((request.getParameter("datafundacao").isEmpty() == false )&&(request.getParameter("datafundacao") != null)){
       
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Date data = sdf.parse(request.getParameter("datafundacao"));
        x.setDatafundacao(data);
        }
        
        dao.alterar(x);
        
    }
%>
<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Editora</h2>
<p>Editora atualizada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
