package NoticeManage;

import JDBC.ConnectMyDB;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class NoticeManagement {

    private Notice notice = null;
    private ConnectMyDB connectMyDB = null;

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
    public boolean insertNotice(Notice notice) throws SQLException {
        boolean result = true;
        try {
            String query = "INSERT INTO notice VALUES (DEFAULT, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
            pstmt.setDate(1, notice.getDate());
            pstmt.setString(2, notice.getWriter());
            pstmt.setString(3, notice.getTitle());
            pstmt.setString(4, notice.getContent());
            pstmt.setInt(5, notice.getResult());
            pstmt.executeUpdate();
        }catch (SQLException e) {
            result = false;
            System.out.println("insert Error");
        }
        connectMyDB.disConnectMyDB();
        return result;
    }
    public List<Notice> inquiryNoticeAll (int pageNum) {
        return null; //임시로 만듦
    }

}
