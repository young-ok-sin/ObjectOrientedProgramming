package JDBC;

import java.sql.*;
import java.sql.Connection;


public class ConnectMyDB{
    String url = "jdbc:mysql://localhost:3306/MyProject";
    String option = "?useUnicode=true&characterEncoding=euckr";
    String userName = "user";

    public ResultSet getResultSet() {
        return resultSet;
    }

    public void setResultSet(ResultSet resultSet) {
        this.resultSet = resultSet;
    }

    String password = "1234";

    Connection connection = null; //DB 연결
    Statement statement = null; //쿼리문 전송
    ResultSet resultSet = null; //반환된 결과를 접수

    public ConnectMyDB() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        url = url + option;
        connection = DriverManager.getConnection(url, userName, password);
        statement = connection.createStatement();
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

    public void insertNotice(Date date, String writer, String title, String content, int result) throws SQLException { //잘 들어감.
        String query = "INSERT INTO notice VALUES (DEFAULT, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setDate(1,date);
        pstmt.setString(2, writer);
        pstmt.setString(3, title);
        pstmt.setString(4,content);
        pstmt.setInt(5, result);
        pstmt.executeUpdate();
    }

    public ResultSet inquiryOffice() throws SQLException {
        System.out.println("office select 들어옴");
        String query = "SELECT * FROM rentaloffice";
        resultSet = statement.executeQuery(query);
        return resultSet;
    }
    public ResultSet selectBicycleByOfficeID(String oID) throws SQLException {
        System.out.println("bicycle select 들어옴");
        String query = "SELECT * FROM bicycle where officeID=?";
        PreparedStatement pstmt = connection.prepareStatement(query);
        pstmt.setString(1, oID);

        resultSet = pstmt.executeQuery();
        System.out.println(query);
       // resultSet = statement.executeQuery(query);
        return resultSet;
    }

}
