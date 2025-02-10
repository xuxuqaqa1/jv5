<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h2> san pham</h2>
ma: <input type="text" name="ma" value="${sanPham.ma}"> <br>
ten: <input type="text" name="ten" value="${sanPham.ten}"> <br>
website: <input type="text" name="website" value="${sanPham.website}"> <br>
mota: <input type="text" name="mota" value="${sanPham.mota}"> <br>
giaban: <input type="text" name="gia_ban" value="${sanPham.gia_ban}"> <br>
soluong: <input type="text" name="so_luong" value="${sanPham.so_luong}"> <br>
trangthai: <input type="radio" name="trang_thai" value="true" ${sanPham.trang_thai ? "checked" : ""}> Con hang
<input type="radio" name="trang_thai" value="false" ${!sanPham.trang_thai ? "checked" : ""}> het hang <br>
<select name="loaiSanPham">
    <c:forEach items="${ListLoaiSP}" var="loaiSanPham">
        <option value="${loaiSanPham.id}" label="${loaiSanPham.ten}" ${sanPham.loaiSanPham.id == loaiSanPham.id ? "selected" : ""}></option>
    </c:forEach>
</select>
</body>
</html>