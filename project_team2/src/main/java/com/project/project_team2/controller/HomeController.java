package com.project.project_team2.controller;

import com.project.project_team2.dao.*;
import com.project.project_team2.model.*;
import java.io.*;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Categories> listCAT = CategoriesDAO.getInstance().selectAll();
        List<Product> listP = ProductDAO.getInstance().selectAll();

        request.setAttribute("listCAT", listCAT);
        request.setAttribute("listP", listP);
        RequestDispatcher rd = request.getRequestDispatcher("/view/home.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
