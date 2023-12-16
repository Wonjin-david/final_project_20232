<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>게시판</title>

    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/'+id;
        }

        function viewPatient(id){
            location.href='viewPost/' + id;
        }

        function deleteItem(event, seq) {
            // Stop the propagation of the click event
            event.stopPropagation();

            // Your delete logic here
            delete_ok(seq);
        }

        function delete_ok(id){
            var a = confirm("정말로 삭제하시겠습니까?");
            if(a) location.href='deleteok/'+id;
        }

    </script>
</head>
<body>
<h1>환자 목록</h1>

    <button type="submit" onclick="location.href='redirect:login/logout'">logout</button>

<table id ="list" width ="90%">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Birth</th>
        <th>Gender</th>
        <th>Symptom</th>
        <th>roomNum</th>
        <th>hospDate</th>
        <th>DiscDate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items ="${list}" var = "u">
        <tr onclick="viewPatient('${u.id}')">
            <td>${u.id}</td>
            <td>${u.name}</td>
            <td>${u.birth}</td>
            <td>${u.gender}</td>
            <td>${u.symptom}</td>
            <td>${u.roomNum}</td>
            <td>${u.hospDate}</td>
            <td>${u.discDate}</td>
            <td><a href="editform/${u.id}">수정</a></td>
            <td><a href="javascript:void(0);" onclick="deleteItem(event, '${u.id}')">삭제</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href = "add">Add new Patient</a>
</body>
</html>