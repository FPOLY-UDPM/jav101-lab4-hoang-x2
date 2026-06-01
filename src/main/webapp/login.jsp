<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>

<h2>LOGIN</h2>

<form action="${url}" method="post">

    Username:
    <input name="username">
    <br><br>

    Password:
    <input type="password" name="password">
    <br><br>

    <button>Login</button>

</form>

<h3>${message}</h3>

</body>
</html>