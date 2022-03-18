import logic.Card;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//@WebServlet(name = "FirstServlet", value = "/FirstServlet")
public class FirstServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        Card card = (Card) session.getAttribute("card");

        String name = request.getParameter("name");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        if (card == null) {
            card = new Card();
            card.setName(name);
            card.setQuantity(quantity);
        }
        session.setAttribute("card", card);

        getServletContext().getRequestDispatcher("/showCard.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
