<%@include file="../cabecalho.jsp"%>
<div class="text">
    <h2>Jogador</h2>

    <div>
        <form action="add-ok.jsp" method="post">
            <label>Email:</label></br>
            <input type="text" placeholder="Insira o email do jogador" name="email" required></br>
            <label>Senha:</label></br>
            <input type="text" placeholder="Insira a senha do jogador" name="senha" required></br>
            <label>Login:</label></br>
            <input type="text" placeholder="Insira o login do jogador" name="login" required></br></br>
            <input type="submit" value="Enviar"></br>
            <input type="reset" value="Limpar">

        </form>
    </div>

    </br>
    <div id="botao"><a href="index.jsp">Voltar</a></div>
</div>
</body>
</html>