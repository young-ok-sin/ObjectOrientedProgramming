package BicycleManage;

import JDBC.ConnectMyDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BicycleControll {
    Bicycle bicycle;
    ConnectMyDB connectMyDB = null;
    public BicycleControll() throws SQLException, ClassNotFoundException {
        bicycle = new Bicycle();
        connectMyDB = new ConnectMyDB();
    }
    public ConnectMyDB getConnectMyDB() {
        return connectMyDB;
    }


    public List<Bicycle> selectBicycleByOfficeID(String officeID) throws SQLException {
        System.out.println("bicycle select  들어옴");
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

    public void upDateBicycleRendted(String selectedBicycle) throws SQLException {

        System.out.println("upDateBicycleRendted");
        String query = "UPDATE bicycle SET isRented = ? WHERE bicycleID = ?";
        System.out.println(query);
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setInt(1, 1);
        pstmt.setString(2, selectedBicycle);
        pstmt.executeUpdate();
        System.out.println(query);
        System.out.println(query);
    }
}
