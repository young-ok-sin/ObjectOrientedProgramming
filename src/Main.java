import JDBC.ConnectMyDB;
import NoticeManage.Notice;
import NoticeManage.NoticeManagement;

import java.sql.Date;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        ConnectMyDB connectMyDB = new ConnectMyDB();
        NoticeManagement noticeManagement = new NoticeManagement();
        Notice notice = noticeManagement.createNotice(new Date(System.currentTimeMillis()),"chanjin1","testNotice1","content3",0);
        connectMyDB.insertNotice(notice);
        connectMyDB.disConnectMyDB();
    }
}