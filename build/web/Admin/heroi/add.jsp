<%@page import="java.util.List"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@include file="../cabecalho.jsp"%>

<%
    CategoriaDAO cdao = new CategoriaDAO();
    EditoraDAO edao = new EditoraDAO();
    RegiaoDAO rdao = new RegiaoDAO();

    List<Categoria> clista = cdao.listar();
    List<Editora> elista = edao.listar();
    List<Regiao> rlista = rdao.listar();
%>
<div class="text">
<h2>Herois</h2>

<div>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <form action="add-ok.jsp" method="post" enctype="multipart/form-data">
        <label>Nome:</label></br>
        <input type="text" placeholder="Insira o nome do Herói" name ="nome" ></br>
        <label>Codinome:</label></br>
        <input type="text" placeholder="Insira o codinome do Herói" name="codinome"  ></br>
        <label>Descrição:</label></br>
        <textarea name="descricao"></textarea><br />
        <label>Foto:</label></br>
        <input type="file" name="file[]" ></br></br>
        <label>Inteligência:</label></br>
        <input type="number" placeholder="Insira a inteligência do Herói" name ="inteligencia" min="1" max="10"></br>
        <label>Força:</label></br>
        <input type="number" placeholder="Insira a força do Herói" name ="forca" min="1" max="10"></br>
        <label>Velocidade:</label></br>
        <input type="number" placeholder="Insira a velocidade do Herói" name ="velocidade" min="1" max="10"></br>
        <label>Resistência:</label></br>
        <input type="number" placeholder="Insira a resistência do Herói" name ="resistencia" min="1" max="10" ></br>
        <label>Projeção de Energia:</label></br>
        <input type="number" placeholder="Insira a projeção de energia do Herói" name ="projecaoenergia" min="1" max="10"></br>
        <label>Habilidade de Combate:</label></br>
        <input type="number" placeholder="Insira a habilidade de combate do Herói" name ="habilidadecombate" min="1" max="10"></br>
        <label>Categoria:</label></br>
        <select name="categoria">
            <option>Selecione</option>
            <option>Nenhum</option>
            <%
                for (Categoria item : clista) {

            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
            %>
        </select>
        </br>
        <label>Editora:</label></br>

        <select name="editora">
            <option>Selecione</option>
            <option>Nenhum</option>
            <%
                for (Editora item : elista) {
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
            %>
        </select>
        </br>
        <label>Região:</label></br>

        <select name="regiao">
            <option>Selecione</option>            
            <option>Nenhum</option>
            <%
                for (Regiao item : rlista) {
            %>
            <option value="<%=item.getCodigo()%>"><%=item.getNome()%></option>
            <%
                }
            %>
        </select>
        </br></br>
        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">
    </form>
</div>
</br>
<div id="botao"><a href="index.jsp">Voltar</a></div>
</body>
</div>
</html>
