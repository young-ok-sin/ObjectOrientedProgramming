package BicycleManage;

import JDBC.ConnectMyDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BicycleUsedHistoryControl {
    BicycleUsedHistory bicycleUsedHistory=null;
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
    public List<BicycleUsedHistory> selectAllOperationallStatisticsByBicycle()throws SQLException {
        List<BicycleUsedHistory> list = new ArrayList<>();
        String query = "SELECT * FROM bicycleusedhistory";
        PreparedStatement pstm = connectMyDB.getConnection().prepareStatement(query);

        ResultSet rs = pstm.executeQuery();
        while(rs.next()) {
            bicycleUsedHistory.setUsedpk(rs.getInt("usedpk"));
            bicycleUsedHistory.setBicycleID(rs.getString("bicycleID"));
            bicycleUsedHistory.setFk_office(rs.getString("fk_office"));
            bicycleUsedHistory.setMemberID(rs.getString("memberID"));
            bicycleUsedHistory.setUsedDistance(rs.getFloat("usedDistance"));
            bicycleUsedHistory.setUsedDate(rs.getDate("usedDate"));
            bicycleUsedHistory.setIsRent(rs.getInt("isRent"));
            bicycleUsedHistory.setAlterTime(rs.getDate("alterTime"));
            list.add(bicycleUsedHistory);
        }
        connectMyDB.disConnectMyDB();
        return list;
    }
   public void addHistory(String bicycleID) throws SQLException {
       String query = "INSERT INTO bicycleusedhistory VALUES (?)";
       PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
       pstmt.setString(1, bicycleID);
       pstmt.executeUpdate();
   }


}
