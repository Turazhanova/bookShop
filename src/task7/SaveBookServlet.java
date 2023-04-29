package task7;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/save_book")
public class SaveBookServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String genre = request.getParameter("genre");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        System.out.println(id);
        Users user = Manager.getBook(id);
        if(user!=null){
            user.setName(name);
            user.setAuthor(author);
            user.setGenre(genre);
            user.setPrice(price);
            user.setDescription(description);

            Manager.updateBook(user);
            response.sendRedirect("/task7");

        }else {
            response.sendRedirect("/task7");

        }

    }
}
