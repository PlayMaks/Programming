package Servlets;

import Model.DAO.VacancyDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CreateVacancy", value = "/CreateVacancy")
public class CreateVacancy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userPermission = (int) request.getSession().getAttribute("userPermission");
        if (userPermission == 1) {
            int idUser = (int) request.getSession().getAttribute("idUser");
            String vacancyName = request.getParameter("vacancyName");
            String vacancyDescription = request.getParameter("vacancyDescription");
            String vacancyRequirements = request.getParameter("vacancyRequirements");
            VacancyDAO vacancyDAO = new VacancyDAO();
            vacancyDAO.createVacancy(idUser, vacancyName, vacancyDescription, vacancyRequirements);
        }
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
