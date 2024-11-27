package dao;

import common.JDBConnect;
import dto.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

    // 이미 존재하는 사용자명 또는 이메일 확인
    private boolean isUserExists(String username, String email) {
        String sql = "SELECT COUNT(*) FROM Plum.users WHERE username = ? OR email = ?";
        try (Connection con = new JDBConnect().getConnection(); PreparedStatement psmt = con.prepareStatement(sql)) {
            psmt.setString(1, username);
            psmt.setString(2, email);
            try (ResultSet rs = psmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0; // 0보다 크면 존재함
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false; // 예외 발생 시 기본적으로 존재하지 않음
    }

    // 회원가입 메서드
    public String registerUser(User user) {
        // 사용자명 및 이메일 중복 확인
        if (isUserExists(user.getUsername(), user.getEmail())) {
            return "이미 존재하는 사용자명 또는 이메일입니다."; // 중복 시 메시지 반환
        }

        String sql = "INSERT INTO Plum.users (username, email, password) VALUES (?, ?, ?, false)";
        try (Connection con = new JDBConnect().getConnection(); PreparedStatement psmt = con.prepareStatement(sql)) {
            psmt.setString(1, user.getUsername());
            psmt.setString(2, user.getEmail());
            psmt.setString(3, user.getPassword());
            psmt.setBoolean(4, false); // isAdmin을 false로 설정
            psmt.executeUpdate();
            System.out.println("회원가입 성공");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("회원가입 실패");
        }
        return "회원가입 성공"; // 성공 메시지 반환
    }

    // 로그인 메서드
    public User loginUser(String email, String password) {
        User user = null;
        String sql = "SELECT * FROM Plum.users WHERE email = ? AND password = ?";
        try (Connection con = new JDBConnect().getConnection(); PreparedStatement psmt = con.prepareStatement(sql)) {
            psmt.setString(1, email);
            psmt.setString(2, password);
            try (ResultSet rs = psmt.executeQuery()) {
                if (rs.next()) {
                    user = new User();
                    user.setUsername(rs.getString("username"));
                    user.setEmail(rs.getString("email"));
                    user.setPassword(rs.getString("password"));
                    user.setAdmin(rs.getBoolean("isAdmin"));
                }
                System.out.println("로그인 성공");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("로그인 실패");
        }
        return user; // 로그인 성공 시 User 객체 반환, 실패 시 null 반환
    }
}
