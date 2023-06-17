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

}
