package Serv;

import KodJ.DBmanager;
import KodJ.Items;
import KodJ.Users;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/newServlet")
public class newServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Items> arr = DBmanager.getItems();
        request.setAttribute("tovary", arr);
        request.getRequestDispatcher("/Osnov.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("login");
        String password = request.getParameter("passwor");
        ArrayList<Users> arr = DBmanager.authorization();
        for (Users u : arr){
            if (u.getEmail().equals(email) && u.getPassword().equals(password)){
                request.setAttribute("users", u);
                request.getRequestDispatcher("/vhod.jsp").forward(request, response);
            }
        }
        request.setAttribute("user", "true");
        request.getRequestDispatcher("/LogPas.jsp").forward(request, response);
    }
}