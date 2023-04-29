<%@ page import="java.util.ArrayList" %>
<%@ page import="task7.Users" %>
<%@ page import="task7.Manager" %>
<%@ page import="javax.swing.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body>
<%@include file="navbar.jsp"%>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  Users user = Manager.getBook(id);
  if(user!=null){
%>
<div class="container ">
  <div class="row mt-4">


      <input type="text" readonly value="<%=user.getName()%>">
      <br><br>
      <input type="text" readonly value="<%=user.getAuthor()%>">

      <br><br>
      <input type="text" readonly value="<%=user.getGenre()%>">

      <br><br>
      <input type="text" readonly value="<%=user.getPrice()%> KZT">
      <br><br>
      <textarea class="form-control" readonly rows="10"><%=user.getDescription()%></textarea>

      <!-- Button trigger modal -->
      <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editBook">
        EDIT BOOK
      </button>
      <!-- Button trigger modal -->
      <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteBook">
          DELETE BOOK
      </button>


      <div class="modal fade" id="deleteBook" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
          <div class="modal-dialog">
              <div class="modal-content">
                  <form action="${pageContext.request.contextPath}/delete-book" method="post">
                      <input type="hidden" name="id" value="<%=user.getId()%>">
                      <div class="modal-header">
                          <h1 class="modal-title fs-5" >Confirm Delete</h1>
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>
                      <div class="modal-body">
                          <h5>Are you sure? </h5>
                      </div>
                      <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                          <button class="btn btn-primary">YES</button>
                      </div>
                  </form>
              </div>

          </div>

      </div>

      <div class="modal fade" id="editBook" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="container text-center">
                <div class="row mt-4">

                  <form action ="/save_book" method="post">
                    <input type="hidden" name="id" value="<%=user.getId()%>">
                    <input type="text" name ='name' value="<%=user.getName()%>">
                    <br><br>
                    <input type ="text" name="author"  value="<%=user.getAuthor()%>">

                    <br><br>
                    <select  name="genre">

                      <option <%=(user.getGenre().equals("Fantasy")?"selected":"")%>>Fantasy</option>
                      <option <%=(user.getGenre().equals("Roman")?"selected":"")%>>Roman</option>
                      <option <%=(user.getGenre().equals("Horror")?"selected":"")%>>Horror</option>
                      <option <%=(user.getGenre().equals("Biography")?"selected":"")%>>Biography</option>
                      <option <%=(user.getGenre().equals("trilogya")?"selected":"")%>>trilogya</option>
                    </select>


                    <br><br>
                    <select class="form-select" name="price" >

                        <%
                          for(int i=0;i<1000;i+=100){
                        %>
                        <option <%=(i==user.getPrice()?"selected":"")%>><%=i%></option>
                        <%
                          }
                        %>

                    </select>


                    <textarea name ="description"><%=user.getDescription()%></textarea>
                    <button class="form-control" >send</button>
                  </form>
                </div>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Understood</button>
            </div>
          </div>
        </div>
      </div>
  </div>
</div>

<%
  }else{
%>
<h3 class="text-center">NOT BOOK FOUND</h3>
<%
  }
%>

<script src="js/bootstrap.js"></script>
</body>
</html>
