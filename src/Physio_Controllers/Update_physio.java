package Physio_Controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Physio_Beans.User;
import Physio_Models.PhysioDAO;

@WebServlet("/Update_physio")
public class Update_physio extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PhysioDAO physioDAO;

    public Update_physio() {
        super();
        physioDAO = new PhysioDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            updateUser(request, response);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        String NIC = request.getParameter("NIC");
        String name = request.getParameter("Name");
        String email = request.getParameter("Email");
        String certificate_ID = request.getParameter("Certificate_ID");
        String address = request.getParameter("Address");
        String exp = request.getParameter("Exp");
        String place_name = request.getParameter("Place_Name");
        String contact_no = request.getParameter("Contact_No");
        String status = request.getParameter("Status");
        // String password = request.getParameter("Password");

        User user = new User(NIC, name, email, certificate_ID, address, exp, place_name, contact_no, status);

        physioDAO.updateUser(user);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("physio/physio_dashboard.jsp");

        requestDispatcher.forward(request, response);
        // response.sendRedirect("physio/physio_dashboard.jsp");
    }
}
