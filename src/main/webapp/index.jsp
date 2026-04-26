<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>

<h2>Login Page</h2>

<form method="post">
    Username: <input type="text" name="username" required><br><br>
    Password: <input type="password" name="password" required><br><br>
    <input type="submit" value="Login">
</form>

<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    if(user != null && pass != null){
        if(user.equals("admin") && pass.equals("1234")){
            response.sendRedirect(request.getContextPath() + "/success.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/fail.jsp");
        }
    }
%>

</body>
</html>
