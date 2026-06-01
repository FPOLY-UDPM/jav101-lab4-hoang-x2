<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload</title>
</head>
<body>

<h2>UPLOAD FILE</h2>

<form action="upload"
      method="post"
      enctype="multipart/form-data">

    <input type="file" name="photo">

    <br><br>

    <button>Upload</button>

</form>

<h3>${message}</h3>

</body>
</html>