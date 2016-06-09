<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Categoria</h2>


    <form action="add-ok.jsp" method="post">
        <label>Nome:</label></br>
        <input type="text" placeholder="Insira o nome da categoria" name ="nome" required></br></br>
        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">
    </form>
    </br>
    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>

</body>
</html>
