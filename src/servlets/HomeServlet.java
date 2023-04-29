package servlets;



import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/task3")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print("<html>");
        out.print("<head>");
        out.print("<title>Task3</title>");
        out.print("</head>");
        out.print("<body>");
        out.print("<form action='/send' method='get'>");
        out.print("NAME: ");
        out.print("<input type='text' name='name'> ");
        out.print("<br>");
        out.print("SURNAME: ");
        out.print("<input type='text' name='surname'> ");
        out.print("Gender: ");
        out.print("<br>");
        out.print("<input type ='radio'> male ");
        out.print("<br>");
        out.print("<input type ='radio'> female");  out.print("<br>");



        out.print("<button>SEND</button>");
        out.print("</form>");
        out.print("</body>");
        out.print("</html>");
    }
}