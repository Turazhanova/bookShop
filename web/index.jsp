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


         <div class="container">
             <div class="row">
                 <div class="col">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Author</th>
                            <th>Genre</th>
                            <th>Price</th>
                            <th style="width: 10%">Details</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            ArrayList<Users> us =(ArrayList<Users>) (Manager.getUsers());
                            if(us!=null){
                            for(Users users :us){
                                System.out.println(users.getId() + " " + users.getName() + " " + users.getGenre());
                        %>
                        <tr>
                            <td><%=users.getId()%></td>

                            <td><%=users.getName()%></td>
                            <td><%=users.getAuthor()%></td>
                            <td><%=users.getGenre()%></td>

                            <td><%=users.getPrice()%></td>
                            <td>
                            <a class="btn btn-success btn-sm"  href="/details?id=<%=users.getId()%>">details</a>
                            </td>
                        </tr>


                        <%
                            }
                            }
                        %>
                        <td></td>

                        </tbody>
                    </table>
                 </div>
             </div>
         </div>


</body>
</html>
