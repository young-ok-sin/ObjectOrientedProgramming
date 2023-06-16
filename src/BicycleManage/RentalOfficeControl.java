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
    public RentalOffice createRentalOffice (String rentalOffice_id, String rentalOfficeName, String rentalofficePos , int rentalOfficeMax){
        rentalOffice.setOfficeID(rentalOffice_id);
        rentalOffice.setName(rentalOfficeName);
        rentalOffice.setLocation(rentalofficePos);
        rentalOffice.setMaximumBicycleCnt(rentalOfficeMax);
        rentalOffice.setCurrentBicycleCnt(0);
        return rentalOffice;
    }
    public ResultSet inquiryOffice() throws SQLException {
        String query = "SELECT * FROM rentaloffice";
        connectMyDB.setResultSet(connectMyDB.getStatement().executeQuery(query));
        return connectMyDB.getResultSet();
    }
    public boolean insertOffice(RentalOffice rentalOffice) throws SQLException{
        int result = 0;
        try{
            String query = "INSERT INTO rentaloffice VALUES (?, ? , ? , ? , ?)";
            PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
            pstmt.setString(1, rentalOffice.getOfficeID());
            pstmt.setString(2, rentalOffice.getName());
            pstmt.setString(3, rentalOffice.getLocation());
            pstmt.setInt(4, rentalOffice.getMaximumBicycleCnt());
            pstmt.setInt(5,  rentalOffice.getCurrentBicycleCnt());
            result = pstmt.executeUpdate();
        } catch(SQLException e) {
            System.out.println("ERROR: CANNOT INSERT");
            e.printStackTrace();
        }

        return result == 1;
    }
    public boolean checkForDuplicateOfficeID(String officeID) throws SQLException {
        String query = "SELECT * FROM rentaloffice WHERE officeID = ?";
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setString(1, officeID);
        ResultSet resultSet = pstmt.executeQuery();

        return resultSet.next();
    }
}
