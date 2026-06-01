<%@ page contentType="text/html;charset=UTF-8"
         language="java"
         isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng ký</title>
</head>
<body>

<h1>Đăng Ký</h1>

<form action="dang-ky" method="post">

    Tên đăng nhập:
    <input name="username">
    <br><br>

    Mật khẩu:
    <input type="password" name="password">
    <br><br>

    Giới tính:

    <input type="radio"
           name="gender"
           value="Nam"
           checked>Nam

    <input type="radio"
           name="gender"
           value="Nữ">Nữ

    <br><br>

    <input type="checkbox"
           name="married">
    Đã có gia đình?

    <br><br>

    Quốc tịch:

    <select name="country">

        <option>Việt Nam</option>
        <option>United States</option>
        <option>Japan</option>

    </select>

    <br><br>

    Sở thích:

    <input type="checkbox"
           name="hobby"
           value="Đọc sách">Đọc sách

    <input type="checkbox"
           name="hobby"
           value="Du lịch">Du lịch

    <input type="checkbox"
           name="hobby"
           value="Âm nhạc">Âm nhạc

    <br><br>

    Ghi chú:
    <br>

    <textarea name="note"
              rows="5"
              cols="40"></textarea>

    <br><br>

    <button>Đăng ký</button>

</form>

<h3>${message}</h3>

</body>
</html>