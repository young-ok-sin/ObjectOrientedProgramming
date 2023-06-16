package BicycleManage;

import JDBC.ConnectMyDB;
import MemberManage.Member;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BicycleControl {
    Bicycle bicycle;
    ConnectMyDB connectMyDB = null;
    public BicycleControl() throws SQLException, ClassNotFoundException {
        bicycle = new Bicycle();
        connectMyDB = new ConnectMyDB();
    }
    public ConnectMyDB getConnectMyDB() {
        return connectMyDB;
    }

    public Bicycle createBicycle (String id, String rentalOffice_id){
        bicycle.setBicycleID(id);
        bicycle.setOfficeID(rentalOffice_id);
        bicycle.setMemberID(null);
        bicycle.setUsedDate(null);
        bicycle.setUsedDistance(0);
        bicycle.setIsRented(0);
        return bicycle;
    }
    public List<Bicycle> createDTO(String officeID) throws SQLException {
        List<Bicycle> list = new ArrayList<>();
        String query = "SELECT * FROM bicycle WHERE officeID=?";
        PreparedStatement pstm = connectMyDB.getConnection().prepareStatement(query);
        pstm.setString(1, officeID);

        ResultSet rs = pstm.executeQuery();
        while(rs.next()) {
            Bicycle bicycle1 = new Bicycle();
            bicycle1.setBicycleID(rs.getString("bicycleID"));
            list.add(bicycle1);
        }
        connectMyDB.disConnectMyDB();
        return list;
    }

    public void changeBicycleStatus(String selectedBicycle, boolean isRented) throws SQLException {
        String query = "UPDATE bicycle SET isRented = ? WHERE bicycleID = ?";
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setBoolean(1,isRented);
        pstmt.setString(2, selectedBicycle);
        pstmt.executeUpdate();
    }
    public boolean insertBicycle(Bicycle bicycle) throws SQLException{
        int result = 0;
        try{
            String query = "INSERT INTO bicycle VALUES (?, ?,?,?,?,?)";
            PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
            pstmt.setString(1, bicycle.getBicycleID());
            pstmt.setString(2, bicycle.getOfficeID());
            pstmt.setString(3, bicycle.getMemberID());
            pstmt.setDate(4, (Date) bicycle.getUsedDate());
            pstmt.setFloat(5, bicycle.getUsedDistance());
            pstmt.setInt(6, bicycle.getIsRented());
            result = pstmt.executeUpdate();
        } catch(SQLException e) {
            System.out.println("ERROR: CANNOT INSERT");
            e.printStackTrace();
        }

        return result == 1;
    }
//    public void insertBicycle(String bicycleID, String officeID)throws SQLException{
//        String query = "INSERT INTO bicycle (bicycleId, rentalOfficeId) VALUES (?, ?)";
//        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
//        pstmt.setString(1,bicycleID);
//        pstmt.setString(2,officeID);
//        pstmt.executeQuery();
//    }

}
