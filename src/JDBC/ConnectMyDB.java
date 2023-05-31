package JDBC;

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
        Class.forName("com.mysql.jdbc.Driver");
        url = url + option;
        connection = DriverManager.getConnection(url, userName, password);
        statement = connection.createStatement();
    }
    public void disConnectMyDB() throws SQLException {
        resultSet.close();
        statement.close();
        connection.close();
    }

    public void insertNotice(Date date, String writer, String title, String content, int result) throws SQLException {
        String query = "INSERT INTO notice VALUES (?, ?, ?, ?, ?, ?,)";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setDate(2, date);
        pstmt.setString(3, writer);
        pstmt.setString(4, title);
        pstmt.setString(5, content);
        pstmt.setInt(6, result);
        pstmt.executeUpdate();
    }
}
