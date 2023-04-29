<%@ page import="java.util.ArrayList" %>
<%@ page import="task7.Users" %>
<%@ page import="task7.Manager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container text-center">
    <div class="row mt-4">

        <form action ="/addtask" method="post">

            <input type="text" name ='name'>
            <br><br>
            <input type ="text" name="author">

            <br><br>
            <select name="genre">
                <option>Fantasy</option>
                <option>Horror</option>
                <option>Drama</option>

            </select>

            <br><br>
            <input type="number" name="price">
            <br><br>
            <textarea name ="description"></textarea>
            <button class="form-control" >send</button>
        </form>
    </div>
</div>
</body>
</html>
