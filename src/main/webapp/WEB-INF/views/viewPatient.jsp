<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>게시물 보기</title>
</head>
<body>
<input type="hidden" name="id" value=${u.id}/>
<table>
    <tr>
        <td>Name</td>
        <td><input type="text" name="name" value="${u.name}" /></td>
    </tr>
    <tr>
        <td>Birth</td>
        <td><input type="text" name="birth" value="${u.birth}" /></td>
    </tr>
    <tr>
        <td>Gender</td>
        <td><input type="text" name="gender" value="${u.gender}" /></td>
    </tr>
    <tr>
        <td>Symptom</td>
        <td><input type ="text" name="symptom" value = "${u.symptom}" /></td>
    </tr>
    <tr>
        <td>RoomNum</td>
        <td><input type ="text" name="roomNum" value = "${u.roomNum}" /></td>
    </tr>
    <tr>
        <td>hospDate</td>
        <td><input type ="text" name="hospDate" value = "${u.hospDate}" /></td>
    </tr>
    <tr>
        <td>discDate</td>
        <td><input type ="text" name="discDate" value = "${u.discDate}" /></td>
    </tr>
</table>
<input type="button" value="Back" onclick="history.back()" />
</body>
</html>
