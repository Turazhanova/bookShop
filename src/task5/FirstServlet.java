package task5;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task5")
public class FirstServlet extends HttpServlet {
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.print("<form action = '/todo' method 'get' >");
    out.print("<input type = 'text' name='fullName'> Full name <br><br>");
    out.print("<input type = 'number' name='age'> Exam points<br><br>");
    out.print("Gender: " );
    out.print("<input type = 'radio' name='gender' value='m' > male <br><br>");
    out.print("<input type = 'radio' name='gender' value='f'> female<br><br>");
    out.print("<button >SEND</button>");
    out.print("</form  >");
}
}
