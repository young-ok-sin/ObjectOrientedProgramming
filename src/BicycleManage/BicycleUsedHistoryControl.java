package BicycleManage;

import JDBC.ConnectMyDB;

import java.sql.*;

public class BicycleUsedHistoryControl {
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

    public BicycleUsedHistoryControl() throws SQLException, ClassNotFoundException {
      bicycleUsedHistory = new BicycleUsedHistory();
      connectMyDB = new ConnectMyDB();
    }
    public ResultSet selectAllOperationallStatisticsByBicycle()throws SQLException {
        String query = "SELECT * FROM bicycleusedhistory";
        connectMyDB.setResultSet(connectMyDB.getStatement().executeQuery(query));
        return connectMyDB.getResultSet();
    }
   public void addHistory(String bicycleID) throws SQLException {
       String query = "INSERT INTO bicycleusedhistory VALUES (?)";
       PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
       pstmt.setString(1, bicycleID);
       pstmt.executeUpdate();
   }


}
