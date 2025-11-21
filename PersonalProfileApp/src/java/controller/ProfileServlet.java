package controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("intro");

        // Save to database
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/ProfileDB", "app", "app");

            String sql = "INSERT INTO STUDENT_PROFILE "
                       + "(name, student_id, program, email, hobbies, intro) "
                       + "VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, studentId);
            pst.setString(3, program);
            pst.setString(4, email);
            pst.setString(5, hobbies);
            pst.setString(6, intro);

            pst.executeUpdate();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        // Forward to JSP
        request.setAttribute("name", name);
        request.setAttribute("studentId", studentId);
        request.setAttribute("program", program);
        request.setAttribute("email", email);
        request.setAttribute("hobbies", hobbies);
        request.setAttribute("intro", intro);

        RequestDispatcher rd = request.getRequestDispatcher("displayProfile.jsp");
        rd.forward(request, response);
    }
}
