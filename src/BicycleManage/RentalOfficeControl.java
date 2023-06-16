package BicycleManage;

import JDBC.ConnectMyDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RentalOfficeControl {

    RentalOffice rentalOffice=null;
    ConnectMyDB connectMyDB = null;

    public RentalOffice getRentalOffice(String officeID, String name, String location, int currentBicycleCnt, int maximumBicycleCnt) {
        rentalOffice.setOfficeID(officeID);
        rentalOffice.setName(name);
        rentalOffice.setLocation(location);
        rentalOffice.setCurrentBicycleCnt(currentBicycleCnt);
        rentalOffice.setMaximumBicycleCnt(maximumBicycleCnt);
        return rentalOffice;
    }

    public void setRentalOffice(RentalOffice rentalOffice) {
        this.rentalOffice = rentalOffice;
    }

    public ConnectMyDB getConnectMyDB() {
        return connectMyDB;
    }

    public void setConnectMyDB(ConnectMyDB connectMyDB) {
        this.connectMyDB = connectMyDB;
    }

    public RentalOfficeControl() throws SQLException, ClassNotFoundException {
        rentalOffice = new RentalOffice();
        connectMyDB = new ConnectMyDB();
    }
    public List<RentalOffice> inquiryOffice() throws SQLException {
        List<RentalOffice> list = new ArrayList<>();
        String query = "SELECT * FROM rentaloffice";
        connectMyDB.setResultSet(connectMyDB.getStatement().executeQuery(query));
        PreparedStatement pstm = connectMyDB.getConnection().prepareStatement(query);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()) {
            RentalOffice rentalOffice2 = new RentalOffice();
            rentalOffice2.setOfficeID(rs.getString("officeID"));
            list.add(rentalOffice);
        }
        connectMyDB.disConnectMyDB();
        return list;
    }
    public void insertOffice(String rentalOfficeId, String rentalOfficeName, int rentalOfficeMax , String rentalofficePos)throws SQLException{
        String query = "INSERT INTO rentaloffice (OffiId, name, location, maximumBicycleCnt) VALUES (?, ?, ?, ?)";
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setString(1,rentalOfficeId);
        pstmt.setString(2,rentalOfficeName);
        pstmt.setInt(3,rentalOfficeMax);
        pstmt.setString(4,rentalofficePos);
        pstmt.executeQuery();
    }
}
