package task7;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet(value = "/addtask")
public class AddTaskServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users user1 =new Users();

        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String genre = request.getParameter("genre");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");

        user1.setName(name);
        user1.setAuthor(author);
        user1.setGenre(genre);
        user1.setPrice(price);
        user1.setDescription(description);

        Manager.addUsers(user1);
        System.out.println(user1.getId());

        response.sendRedirect("/task7");

    }
}
