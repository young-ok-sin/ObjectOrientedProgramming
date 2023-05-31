import JDBC.ConnectMyDB;

import java.sql.Date;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ConnectMyDB connectMyDB = new ConnectMyDB();
        connectMyDB.insertNotice(new Date(System.currentTimeMillis()),"chanjin1","testNotice1","content3",0);
        connectMyDB.disConnectMyDB();
    }
}