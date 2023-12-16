<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action = "addok" method="post">
    <table id = "edit">
        <tr><td>이름</td><td><input type = "text" name = "name"/></td></tr>
        <tr><td>생일</td><td><input type = "date" name = "birth"/></td></tr>
        <tr><td>성별</td><td><input type = "text" name = "gender"/></td></tr>
        <tr><td>증상</td><td><textarea cols="50" rows="5" name = "symptom"></textarea></td></tr>
        <tr><td>호실</td><td><input type = "text" name = "roomNum"/></td></tr>
        <tr><td>입원 날</td><td><input type = "date" name = "hospDate"/></td></tr>
        <tr><td>퇴원 날</td><td><input type = "date" name = "discDate"/></td></tr>
    </table>
    <button type = "button" onclick = "location.href='list'">목록 보기</button>
    <button type = "submit">등록하기</button>
</form>
</body>
</html>