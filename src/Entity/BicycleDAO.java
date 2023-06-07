package Entity;

import java.sql.*;

public class BicycleDAO {

    String url = "jdbc:mysql://localhost:3306/MyProject";
    String option = "?useUnicode=true&characterEncoding=utf-8";
    String userName = "user"; String password = "1234";

    Connection connection = null; //DB 연결
    Statement statement = null; //쿼리문 전송
    ResultSet resultSet = null; //반환된 결과를 접수
    public ResultSet getResultSet() {
        return resultSet;
    }

    public void setResultSet(ResultSet resultSet) {
        this.resultSet = resultSet;
    }
    public BicycleDAO() throws SQLException, ClassNotFoundException {
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
