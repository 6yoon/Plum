package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBConnect {
    private String jdbcURL = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
    private String id = "root";
    private String pwd = "1234";
    private Connection con;

    public JDBConnect() {
        connect();
    }

    private void connect() {
        try {
            // 드라이버 로딩
            Class.forName("com.mysql.cj.jdbc.Driver");
            // DB 서버 연결
            con = DriverManager.getConnection(jdbcURL, id, pwd);
            System.out.println("DB 연결 완료");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        return con; // 현재 연결을 반환
    }
    
    public void close() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
                System.out.println("JDBC 자원 해제");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}