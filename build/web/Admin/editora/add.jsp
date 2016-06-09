

<%@include file="../cabecalho.jsp"%>
<div class="text">
<h2>Editora</h2>

<div>

    <form action="add-ok.jsp" method="post">
        <label>Nome:</label></br>
        <input type="text" placeholder="Insira o nome da editora" name ="nome" required></br>
        <label>Data De Fundação:</label></br>
        <input type="text" placeholder="Insira a data de fundação da editora" name="datafundacao" ></br></br>
        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">


    </form>
</div>

</br>

<div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>
