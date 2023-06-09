package BicycleManage;

import JDBC.ConnectMyDB;

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
}
