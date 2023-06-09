package BicycleManage;

import JDBC.ConnectMyDB;

import java.sql.*;

public class RentalOfficeController {

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

    public RentalOfficeController() throws SQLException, ClassNotFoundException {
        rentalOffice = new RentalOffice();
        connectMyDB = new ConnectMyDB();
    }
    public ResultSet inquiryOffice() throws SQLException {
        System.out.println("office select 들어옴");
        String query = "SELECT * FROM rentaloffice";
        connectMyDB.setResultSet(connectMyDB.getStatement().executeQuery(query));
        return connectMyDB.getResultSet();
    }
}
