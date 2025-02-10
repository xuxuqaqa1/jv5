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
    <h2>Them san pham</h2>
    ma: <input type="text" name="ma"> <br>
    ten: <input type="text" name="ten"> <br>
    website: <input type="text" name="website"> <br>
    mota: <input type="text" name="mota"> <br>
    giaban: <input type="text" name="gia_ban"> <br>
    soluong: <input type="text" name="so_luong"> <br>
    trangthai: <input type="radio" name="trang_thai" value="true"> Con hang
    <input type="radio" name="trang_thai" value="false"> het hang <br>
    <select name="loaiSanPham">
        <c:forEach items="${ListLoaiSP}" var="loaiSanPham">
            <option value="${loaiSanPham.id}" label="${loaiSanPham.ten}"></option>
        </c:forEach>
    </select>
    <button>add</button>
<h2>Danh sach san pham</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>ma</th>
                <th>ten</th>
                <th>mota</th>
                <th>web</th>
                <th>gia ban</th>
                <th>so luong</th>
                <th>loaisp</th>
                <th>trang thai</th>
                <th colspan="2">action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${ListSanPham}" var="sanPham">
                <tr>
                    <td>${sanPham.id}</td>
                    <td>${sanPham.ma}</td>
                    <td>${sanPham.ten}</td>
                    <td>${sanPham.mota}</td>
                    <td>${sanPham.website}</td>
                    <td>${sanPham.gia_ban}</td>
                    <td>${sanPham.so_luong}</td>
                    <td>${sanPham.loaiSanPham.ten}</td>
                    <td>${sanPham.trang_thai ? "Con hang": "Het hang"}</td>
                    <td>
                        <a href="/san-pham/detail/${sanPham.id}">detail</a>
                        <a href="/san-pham/delete?id=${sanPham.id}">xoa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>