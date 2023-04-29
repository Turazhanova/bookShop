package task5;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.ServerException;

@WebServlet(value = "/todo")
public class proces extends HttpServlet {
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
         String name=request.getParameter("fullName");
         int age = Integer.parseInt(request.getParameter("age"));
         String gender=request.getParameter("gender");
         String main="";
         main+=name+"got";
         if(age>=50&&age<=59){
             main+=" d";
       }else if(age>=60&&age<=69){
             main+=" c";
         }
         else if(age>=70&&age<=79){
             main+=" b";
         }
         else if(age>=90){
             main+=" a";
         }


      response.setContentType("text/html");
       PrintWriter out = response.getWriter();
       out.println("<h1>"+main+"</h1");
   }

}
