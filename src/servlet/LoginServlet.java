package servlet;

import dao.UserDAO;
import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO userDAO = new UserDAO();
        try {
            User user = userDAO.loginUser(email, password);
            if (user != null) {
                // 로그인 성공 시 세션에 사용자 정보 저장
                request.getSession().setAttribute("user", user); // User 객체를 세션에 저장
                
                if (user.isAdmin()) {
                    response.sendRedirect("admin.jsp"); // 관리자 페이지로 리다이렉트
                } else {
                	response.sendRedirect("index.jsp"); // 일반 사용자 페이지로 리다이렉트
                }
            } else {
                request.setAttribute("errorMessage", "로그인 실패"); // 로그인 실패 메시지 설정
                request.getRequestDispatcher("login.jsp").forward(request, response); // 로그인 페이지로 포워드
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "서버 오류"); // 서버 오류 메시지 설정
            request.getRequestDispatcher("login.jsp").forward(request, response); // 로그인 페이지로 포워드
        }
    }
}