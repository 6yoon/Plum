// SignUpServlet.java
package servlet;

import dao.UserDAO;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println(username + email + password);

        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(password);

        UserDAO userDAO = new UserDAO();
        try {
            userDAO.registerUser(user);
            response.sendRedirect("login.jsp"); // 메인 페이지로 이동
        } catch (Exception e) {
            e.printStackTrace();
            String resultMessage = userDAO.registerUser(user); // 메시지 받기

            // 메시지를 request에 저장
            request.setAttribute("resultMessage", resultMessage);
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
    }
}