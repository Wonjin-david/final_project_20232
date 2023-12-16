<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
    <style>

        #edit td, #edit th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #edit th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>

<form method="post" action="../editok" commandName="patientVO">
    <input type="hidden" name="id" value=${u.id} />
    <table id ="edit">
        <tr><td>이름</td><td><input type = "text" name = "name"/></td></tr>
        <tr><td>생일</td><td><input type = "date" name = "birth"/></td></tr>
        <tr><td>성별</td><td><input type = "text" name = "gender"/></td></tr>
        <tr><td>증상</td><td><textarea cols="50" rows="5" name = "symptom"></textarea></td></tr>
        <tr><td>호실</td><td><input type = "text" name = "roomNum"/></td></tr>
        <tr><td>입원 날</td><td><input type = "date" name = "hospDate"/></td></tr>
        <tr><td>퇴원 날</td><td><input type = "date" name = "discDate"/></td></tr>
    </table>
    <input type = "submit" value ="수정하기"/>
    <input type = "button" value ="취소하기" onclick="history.back()"/>
</form>
</body>
</html>