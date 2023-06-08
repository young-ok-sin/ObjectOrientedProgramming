package Entity;

import JDBC.ConnectMyDB;

import java.sql.*;

public class BicycleControll {
    Bicycle bicycle;
    ConnectMyDB connectMyDB = null;

    public Bicycle getBicycle() {
        return bicycle;
    }

    public void setBicycle(Bicycle bicycle) {
        this.bicycle = bicycle;
    }

    public ConnectMyDB getConnectMyDB() {
        return connectMyDB;
    }

    public void setConnectMyDB(ConnectMyDB connectMyDB) {
        this.connectMyDB = connectMyDB;
    }


    public BicycleControll() throws SQLException, ClassNotFoundException {
       bicycle = new Bicycle();
        connectMyDB = new ConnectMyDB();
    }
    public ResultSet selectBicycleByOfficeID(String oID) throws SQLException {
        System.out.println("bicycle select 들어옴");
        String query = "SELECT * FROM bicycle where officeID=?";
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setString(1, oID);

        connectMyDB.setResultSet(connectMyDB.getStatement().executeQuery(query));
        System.out.println(query);
        // resultSet = statement.executeQuery(query);
        return connectMyDB.getResultSet();
    }

}
