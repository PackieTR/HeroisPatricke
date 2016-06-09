
<%@page import="modelo.Regiao"%>
<%@page import="modelo.Editora"%>
<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="dao.EditoraDAO"%>
<%@page import="dao.RegiaoDAO"%>
<%@page import="dao.HeroiDAO"%>
<%@page import="modelo.Heroi"%>
<%@page import="util.Upload"%>
<%@include file="../cabecalho.jsp"%>

<%
    Upload up = new Upload();
    up.setFolderUpload("images");
    CategoriaDAO cdao = new CategoriaDAO();
    EditoraDAO edao = new EditoraDAO();
    RegiaoDAO rdao = new RegiaoDAO();
    HeroiDAO dao = new HeroiDAO();
    Heroi x = new Heroi();
    if(up.formProcess(getServletContext(), request))
    {
            x.setNome(up.getForm().get("nome").toString());
            x.setDescricao(up.getForm().get("descricao").toString());
            x.setCodinome(up.getForm().get("codinome").toString());

            if (!up.getForm().get("inteligencia").toString().isEmpty() && up.getForm().get("inteligencia") != null) {
                x.setInteligencia(Integer.parseInt(up.getForm().get("inteligencia").toString()));
            }
            if (!up.getForm().get("forca").toString().isEmpty() && up.getForm().get("forca") != null) {
                x.setForca(Integer.parseInt(up.getForm().get("forca").toString()));
            }
            if (!up.getForm().get("resistencia").toString().isEmpty() && up.getForm().get("resistencia") != null) {
                x.setResistencia(Integer.parseInt(up.getForm().get("resistencia").toString()));
            }
            if (!up.getForm().get("projecaoenergia").toString().isEmpty() && request.getParameter("projecaoenergia") != null) {
                x.setProjecaoenergia(Integer.parseInt(up.getForm().get("projecaoenergia").toString()));
            }
            if (!up.getForm().get("habilidadecombate").toString().isEmpty() && request.getParameter("habilidadecombate") != null) {
                x.setHabilidadecombate(Integer.parseInt(up.getForm().get("habilidadecombate").toString()));
            }
            if (!up.getForm().get("velocidade").toString().isEmpty() && request.getParameter("velocidade") != null) {
                x.setVelocidade(Integer.parseInt(up.getForm().get("velocidade").toString()));
            }

            if (up.getForm().get("categoria") != null && (!up.getForm().get("categoria").toString().isEmpty()) && (!up.getForm().get("categoria").toString().equals("Nenhum")) && (!up.getForm().get("categoria").toString().equals("Selecione"))) {
                x.setCategoria(cdao.buscarPorChavePrimaria(Integer.parseInt(up.getForm().get("categoria").toString())));
            }

            if (up.getForm().get("editora") != null && (!up.getForm().get("editora").toString().isEmpty()) && (!up.getForm().get("editora").toString().equals("Nenhum")) && (!up.getForm().get("editora").toString().equals("Selecione"))) {
                x.setEditora(edao.buscarPorChavePrimaria(Integer.parseInt(up.getForm().get("editora").toString())));
            }

            if (up.getForm().get("regiao") != null && (!up.getForm().get("regiao").toString().isEmpty()) && (!up.getForm().get("regiao").toString().equals("Nenhum")) && (!up.getForm().get("regiao").toString().equals("Selecione"))) {
                x.setRegiao(rdao.buscarPorChavePrimaria(Integer.parseInt(up.getForm().get("regiao").toString())));
            }
            
            x.setFoto(up.getFiles().get(0));
        
        dao.incluir(x);
   
    }   
   

%>
<div class="text">
<h2>Heroi</h2>
<p>Novo Herói adicionada com sucesso
</p>
<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
