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

    public List<BicycleUsedHistory> selectAllOperationallStatisticsByBicycle(String member_id) throws SQLException {
        List<BicycleUsedHistory> list = new ArrayList<>();
        String query = "SELECT * FROM bicycleusedhistory WHERE memberID = ?";
        PreparedStatement pstm = connectMyDB.getConnection().prepareStatement(query);
        pstm.setString(1, member_id);

        ResultSet rs = pstm.executeQuery();
        while(rs.next()) {
            BicycleUsedHistory bicycleUsedHistory2 = new BicycleUsedHistory();
            bicycleUsedHistory2.setFk_office(rs.getString("fk_officeID"));
            bicycleUsedHistory2.setUsedDate(rs.getDate("usedDate"));
            bicycleUsedHistory2.setUsedDistance(rs.getFloat("usedDistance"));
            bicycleUsedHistory2.setBicycleID(rs.getString("bicycleID"));
            list.add(bicycleUsedHistory2);
        }
        connectMyDB.disConnectMyDB();
        return list;
    }

    public List<BicycleUsedHistory> officeCount(String member_id) throws SQLException {
        BicycleUsedHistory bicycleUsedHistory2 = new BicycleUsedHistory();
        System.out.println("officeCount "+member_id);
        List<BicycleUsedHistory> resultList = new ArrayList<>();//최종출력

        String query = "SELECT fk_officeID, count(*) count FROM bicycleusedhistory WHERE memberID = ? group by fk_officeID";
        PreparedStatement pstm = connectMyDB.getConnection().prepareStatement(query);
        pstm.setString(1, member_id);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            String fk_officeID = rs.getString("fk_officeID");
            int office_count = rs.getInt("count");

            bicycleUsedHistory2 = new BicycleUsedHistory();
            bicycleUsedHistory2.setFk_office(fk_officeID);
            bicycleUsedHistory2.setOfficeCount(office_count);

            resultList.add(bicycleUsedHistory2);
        }
        connectMyDB.disConnectMyDB();
        return resultList;
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
