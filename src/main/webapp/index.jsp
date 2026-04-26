<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>

<h2>User Login</h2>

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
            out.println("<h3 style='color:green;'>Login Successful</h3>");
        } else {
            out.println("<h3 style='color:red;'>Login Failed</h3>");
        }
    }
%>

</body>
</html>
