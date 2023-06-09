package JDBC;

import MemberManage.Member;
import NoticeManage.Notice;

import java.sql.*;

public class ConnectMyDB{
    private final static String url = "jdbc:mysql://localhost:3306/MyProject?useUnicode=true&characterEncoding=euckr";
    private final static String userName = "user";
    private final static String password = "1234";
    private  Connection connection = null; //DB 연결
    private  Statement statement = null; //쿼리문 전송
    private  ResultSet resultSet = null; //반환된 결과를 접수

    public ConnectMyDB() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, userName, password);
        statement = connection.createStatement();
        System.out.println("DB에 연결되었습니다.");
    }
    public Connection getConnection() {
        return connection;
    }
    public Statement getStatement () {
        return statement;
    }
    public ResultSet getResultSet() {
        return resultSet;
    }
    public void setResultSet(ResultSet resultSet) {
        this.resultSet = resultSet;
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

    public int insertMember(Member member) throws SQLException{
        String query = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setString(1, member.getMemberId());
        pstmt.setString(2, member.getPassword());
        pstmt.setDate(3, member.getSighUpDate());
        pstmt.setString(4, member.getName());
        pstmt.setInt(5, member.getAge());
        pstmt.setString(6, member.getBirthday());
        pstmt.setString(7, member.getPhoneNumber());
        pstmt.setString(8, member.getEmail());
        int result = pstmt.executeUpdate();
        return result;
    }
}
