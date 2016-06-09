<%
    if (request.getParameter("login") != null && request.getParameter("senha") != null) {
        String loginCerto = "Admin";
        String senhaCerta = "123";
        if (request.getParameter("login").equals(loginCerto)
                && request.getParameter("senha").equals(senhaCerta)) {
            session.setAttribute("usuario", request.getParameter("login"));
            response.sendRedirect("home");
        }
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="../style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="text">
            <form>
                <label>Login: </label><input type="text" name="login" required /><br/>
                <label>Senha: </label><input type="password" name="senha" required /><br/>
                <input type="submit" value="Entrar" /><br/>
                <a href="#">Esqueci minha senha</a>
            </form>
        </div>
    </body>
</html>