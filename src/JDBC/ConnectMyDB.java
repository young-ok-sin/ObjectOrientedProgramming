package JDBC;

import NoticeManage.Notice;

import java.sql.*;

public class ConnectMyDB{
    String url = "jdbc:mysql://localhost:3306/MyProject";
    String option = "?useUnicode=true&characterEncoding=euckr";
    String userName = "user";
    String password = "1234";

    Connection connection = null; //DB 연결
    Statement statement = null; //쿼리문 전송
    ResultSet resultSet = null; //반환된 결과를 접수

    public ConnectMyDB() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        url = url + option;
        connection = DriverManager.getConnection(url, userName, password);
        statement = connection.createStatement();
        System.out.println("DB에 연결되었습니다.");
    }
    public void disConnectMyDB() throws SQLException {
        if(resultSet != null) {
            resultSet.close();
        }
        if(statement != null) {
            statement.close();
        }
        if(connection != null) {
            connection.close();
        }
    }

    public boolean insertNotice(Notice notice) {
        boolean result = true;
        try {
            String query = "INSERT INTO notice VALUES (DEFAULT, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = connection.prepareStatement(query);
            pstmt.setDate(1, notice.getDate());
            pstmt.setString(2, notice.getWriter());
            pstmt.setString(3, notice.getTitle());
            pstmt.setString(4, notice.getContent());
            pstmt.setInt(5, notice.getResult());
            pstmt.executeUpdate();
        }catch (SQLException e) {
            result = false;
            System.out.println("insert Error");
        }
        return result;
    }
}
