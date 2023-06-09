package BicycleManage;

import JDBC.ConnectMyDB;

import java.sql.*;

public class BicycleUsedHistoryController {
    BicycleUsedHistory bicycleUsedHistory;
    ConnectMyDB connectMyDB = null;

    public BicycleUsedHistory getBicycleUsedHistory() {
        return bicycleUsedHistory;
    }

    public void setBicycleUsedHistory(BicycleUsedHistory bicycleUsedHistory) {
        this.bicycleUsedHistory = bicycleUsedHistory;
    }

    public ConnectMyDB getConnectMyDB() {
        return connectMyDB;
    }

    public void setConnectMyDB(ConnectMyDB connectMyDB) {
        this.connectMyDB = connectMyDB;
    }

    public BicycleUsedHistoryController() throws SQLException, ClassNotFoundException {
      bicycleUsedHistory = new BicycleUsedHistory();
      connectMyDB = new ConnectMyDB();
    }
    public ResultSet inquiryBicycleUsedHistory()throws SQLException {
        System.out.println("BicycleUsedHistory select 들어옴");
        String query = "SELECT * FROM bicycleusedhistory";
        connectMyDB.setResultSet(connectMyDB.getStatement().executeQuery(query));
        return connectMyDB.getResultSet();
    }
   public void insertInfo(String bicycleID) throws SQLException {
        System.out.println("insertInfo 들어옴");
       String query = "INSERT INTO bicycleusedhistory VALUES (?)";
       PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
       pstmt.setString(1, bicycleID);
       pstmt.executeUpdate();
   }

}
