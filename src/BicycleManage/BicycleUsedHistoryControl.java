package BicycleManage;

import JDBC.ConnectMyDB;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BicycleUsedHistoryControl {
    BicycleUsedHistory bicycleUsedHistory = null;
    Bicycle bicycle;
    BicycleControl bicycleControl = null;
    ConnectMyDB connectMyDB = null;

    public BicycleUsedHistory getBicycleUsedHistory() {

        return bicycleUsedHistory;
    }

    public BicycleUsedHistory createBicycleUsedHistory(String bid, String oid, String member) throws SQLException, ClassNotFoundException {
        bicycleUsedHistory = new BicycleUsedHistory();
        bicycleControl = new BicycleControl();
        bicycleControl.selectAll();
        bicycle = bicycleControl.getBicycleInfo(bid);
        System.out.println("BicycleUsedHistory");
        System.out.println(bid + " " + oid);
        bicycleUsedHistory.setBicycleID(bid);
        bicycleUsedHistory.setFk_office(oid);
        bicycleUsedHistory.setMemberID(member);

        bicycleUsedHistory.setUsedDistance(bicycle.getUsedDistance());
        bicycleUsedHistory.setUsedDate(bicycle.getUsedDate());
        bicycleUsedHistory.setIsRent(bicycle.getIsRented());
        bicycleUsedHistory.setAlterTime(null);
        return bicycleUsedHistory;
    }

    public BicycleUsedHistoryControl() throws SQLException,ClassNotFoundException {
        bicycleUsedHistory = new BicycleUsedHistory();
        connectMyDB = new ConnectMyDB();
    }

    public List<BicycleUsedHistory> selectAllOperationallStatisticsByBicycle() throws SQLException {
        System.out.println("selectAllOperationallStatisticsByBicycle");
        List<BicycleUsedHistory> list = new ArrayList<>();
        String query = "SELECT * FROM bicycleusedhistory";
        PreparedStatement pstm = connectMyDB.getConnection().prepareStatement(query);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            bicycleUsedHistory.setUsedpk(rs.getInt("usedpk"));
            bicycleUsedHistory.setBicycleID(rs.getString("bicycleID"));
            bicycleUsedHistory.setFk_office(rs.getString("fk_officeID"));
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

        System.out.println("bicycleID = " + bicycleID);
        String query = "INSERT INTO bicycleusedhistory VALUES (DEFAULT,?,?,?,?,?,?,?)";
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setString(1, bicycleID);
        pstmt.setString(2, bicycleUsedHistory.getFk_office());
        pstmt.setString(3, bicycleUsedHistory.getMemberID());
        pstmt.setFloat(4, bicycleUsedHistory.getUsedDistance());
        pstmt.setDate(5, (Date) bicycleUsedHistory.getUsedDate());
        pstmt.setInt(6, bicycleUsedHistory.getIsRent());
        pstmt.setDate(7, (Date) bicycleUsedHistory.getAlterTime());
        pstmt.executeUpdate();

    }


}
