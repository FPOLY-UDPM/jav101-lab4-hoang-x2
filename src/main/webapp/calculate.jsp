<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculator</title>
</head>
<body>

<h2>MÁY TÍNH</h2>

<form method="post">

    Số a:
    <input name="a">
    <br><br>

    Số b:
    <input name="b">
    <br><br>

    <button formaction="add">+</button>

    <button formaction="sub">-</button>
</form>

<h3>${message}</h3>

</body>
</html>