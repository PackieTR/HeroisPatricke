
<%@page import="modelo.Heroi"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>

<%
    HeroiDAO hdao = new HeroiDAO();
    Heroi x = hdao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));

    CategoriaDAO cdao = new CategoriaDAO();
    EditoraDAO edao = new EditoraDAO();
    RegiaoDAO rdao = new RegiaoDAO();

    List<Categoria> clista = cdao.listar();
    List<Editora> elista = edao.listar();
    List<Regiao> rlista = rdao.listar();

    Integer cod = 0;
%>
<div class="text">
<h2>Herois</h2>

<div>

    <form action="upd-ok.jsp" method="post" enctype="multipart/form-data">

        <label>Código:</label></br>
        <input type="text" value="<%=x.getCodigo()%>" name="codigo" readonly></br>
        <label>Nome:</label></br>
        <input type="text" value="<%=x.getNome()%>" name ="nome" ></br>
        <label>Codinome:</label></br>
        <input type="text" value="<%=x.getCodinome()%>"  name="codinome" required ></br>
        <label>Descrição:</label></br>
        <text name="descricao" >
            <%=x.getDescricao()%>
        </div class="text"></br></br>


        <label>Inteligência:</label></br>
        <input type="number" value="<%=x.getInteligencia()%>"  name ="inteligencia" min="1" max="10"></br>
        <label>Força:</label></br>
        <input type="number" value="<%=x.getForca()%>"  name ="forca" min="1" max="10"></br>
        <label>Velocidade:</label></br>
        <input type="number" value="<%=x.getVelocidade()%>"  name ="velocidade" min="1" max="10"></br>
        <label>Resistência:</label></br>
        <input type="number" value="<%=x.getResistencia()%>"  name ="resistencia" min="1" max="10" ></br>
        <label>Projeção de Energia:</label></br>
        <input type="number" value="<%=x.getProjecaoenergia()%>"  name ="projecaoenergia" min="1" max="10"></br>
        <label>Habilidade de Combate:</label></br>
        <input type="number" value="<%=x.getHabilidadecombate()%>"  name ="habilidadecombate" min="1" max="10"></br>


        <label>Categoria:</label></br>
        <select name="categoria">
            <%if (x.getCategoria() != null) {%>
            <option value="<%=x.getCategoria().getCodigo()%>"><%out.print(x.getCategoria().getNome());%></option>

            <% cod = x.getCategoria().getCodigo();
            } else {
            %>
            <option>Nenhum</option>

            <%      }
                for (Categoria item : clista) {
                    if (item.getCodigo() != cod) {
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                    }
                }
                cod = 0;
                if (x.getCategoria() != null) {
            %>
            <option>Nenhum</option><%}%>
        </select>
        </br>
        <label>Editora:</label></br>

        <select name="editora"  >
            <%if (x.getEditora() != null) {%>
            <option value="<%=x.getEditora().getCodigo()%>"><%out.print(x.getEditora().getNome());%></option>

            <%

                cod = x.getEditora().getCodigo();

            } else {%>
            <option>Nenhum</option>
            <%
                }
                for (Editora item : elista) {

                    if (item.getCodigo() != cod) {
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                    }
                }
                cod = 0;
                if (x.getEditora() != null) {
            %>
            <option>Nenhum</option><%}%>
        </select>
        </br>
        <label>Região:</label></br>

        <select name="regiao">
            <%
                if (x.getRegiao() != null) {%>
            <option value="<% out.print(x.getRegiao().getCodigo());%>"><%out.print(x.getRegiao().getNome());
                %></option>

            <%cod = x.getRegiao().getCodigo();
            } else {
            %>
            <option>Nenhum</option>
            <%
                }
                for (Regiao item : rlista) {
                    if (item.getCodigo() != cod) {
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                    }
                }
                cod = 0;

                if (x.getRegiao() != null) {
            %>
            <option>Nenhum</option><%}%>
        </select>
        </br></br>

        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">


    </form>
</div>

</br>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</body>
</html>
