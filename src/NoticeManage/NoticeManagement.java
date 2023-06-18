package NoticeManage;

import JDBC.ConnectMyDB;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NoticeManagement {

    private Notice noticeInfo = null;
    private ConnectMyDB connectMyDB = null;

    public NoticeManagement() throws SQLException, ClassNotFoundException {
        noticeInfo = new Notice();
        connectMyDB = new ConnectMyDB();
    }

    public Notice getNotice(Date date, String writer, String title, String content, int result) {
        noticeInfo.setDate(date);
        noticeInfo.setWriter(writer);
        noticeInfo.setTitle(title);
        noticeInfo.setContent(content);
        noticeInfo.setResult(result);
        return noticeInfo;
    }

    public boolean insertNotice(Notice notice) throws SQLException {
        boolean result = false;
        try {
            String query = "INSERT INTO notice VALUES (DEFAULT, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
            pstmt.setDate(1, notice.getDate());
            pstmt.setString(2, notice.getWriter());
            pstmt.setString(3, notice.getTitle());
            pstmt.setString(4, notice.getContent());
            pstmt.setInt(5, notice.getResult());
            pstmt.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println("insert Error");
        }
        connectMyDB.disConnectMyDB();
        return result;
    }

    public List<Notice> inquiryNoticeAll(int pageNum) {
        String query = "SELECT * FROM notice ORDER BY noticeID DESC";
        List<Notice> list = new ArrayList<>();
        try {
            PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
            ResultSet resultset = pstmt.executeQuery();

            while(resultset.next()) {
                Notice noticeInfo = new Notice();
                noticeInfo.setDate(resultset.getDate("date"));
                noticeInfo.setWriter(resultset.getString("writer"));
                noticeInfo.setTitle(resultset.getString("title"));
                noticeInfo.setContent(resultset.getString("content"));
                noticeInfo.setResult(resultset.getInt("result"));
                list.add(noticeInfo);
            }
        } catch (SQLException e) {
            System.out.println("Error selectNotice");
        }
        return list;
    }


}
