package BicycleManage;

import JDBC.ConnectMyDB;

import java.sql.*;

public class RentalOfficeControl {

    RentalOffice rentalOffice;
    ConnectMyDB connectMyDB = null;

    public RentalOffice getRentalOffice() {
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
    public ResultSet inquiryOffice() throws SQLException {
        String query = "SELECT * FROM rentaloffice";
        connectMyDB.setResultSet(connectMyDB.getStatement().executeQuery(query));
        return connectMyDB.getResultSet();
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
