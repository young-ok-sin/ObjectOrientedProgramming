package NoticeManage;

import JDBC.ConnectMyDB;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class NoticeManagement {

    Notice notice = null;
    ConnectMyDB connectMyDB = null;

    public NoticeManagement() throws SQLException, ClassNotFoundException {
        notice = new Notice();
        connectMyDB = new ConnectMyDB();
    }

    public Notice getNotice(Date date, String writer, String title, String content, int result) {
            notice.setDate(date);
            notice.setWriter(writer);
            notice.setTitle(title);
            notice.setContent(content);
            notice.setResult(result);
        return notice;
    }
    public boolean insertNotice(Notice notice) {
        return connectMyDB.insertNotice(notice);
    }
    public List<Notice> inquiryNoticeAll (int pageNum) {
        return null; //임시로 만듦
    }

}
