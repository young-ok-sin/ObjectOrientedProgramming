package JDBC;

import java.sql.*;

public class ConnectMyDB {
    private final String url = "jdbc:mysql://localhost:3306/MyProject?useUnicode=true&characterEncoding=euckr";
    private final String userName = "user";
    private final String password = "1234";
    private Connection connection = null; //DB 연결
    private Statement statement = null; //쿼리문 전송
    private ResultSet resultSet = null; //반환된 결과를 접수

    public ConnectMyDB() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(url, userName, password);
        statement = connection.createStatement();
        System.out.println("DB connect.");
    }

    public Connection getConnection() {
        return connection;
    }

    public Statement getStatement() {
        return statement;
    }

    public ResultSet getResultSet() {
        return resultSet;
    }

    public void setResultSet(ResultSet resultSet) {
        this.resultSet = resultSet;
    }

    public void disConnectMyDB() throws SQLException {
        if (resultSet != null) {
            resultSet.close();
        }
        if (statement != null) {
            statement.close();
        }
        if (connection != null) {
            connection.close();
        }
        System.out.println("DB disconnect");
    }
}
