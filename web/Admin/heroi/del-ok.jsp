<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>

<%
    
     if(request.getParameter("codigo") != null){
    HeroiDAO dao = new HeroiDAO();
    Heroi x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    dao.excluir(x);}
      else{
        response.sendRedirect("index.jsp");
     }
%>

<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Heroi</h2>
<p>Herói excluída com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
