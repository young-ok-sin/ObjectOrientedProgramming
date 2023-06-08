import NoticeManage.Notice;
import NoticeManage.NoticeManagement;

import java.sql.Date;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        NoticeManagement noticeManagement = new NoticeManagement();
        Notice notice = noticeManagement.getNotice(new Date(System.currentTimeMillis()),"chanjin1","testNotice1","content3",0);
        boolean result = noticeManagement.insertNotice(notice);
        if(result) {
            System.out.println("성공");
        } else {
            System.out.println("실패");
        }

    }
}