package NoticeManage;

import JDBC.ConnectMyDB;

import java.sql.Date;
import java.sql.SQLException;
import java.util.List;

public class Notice {
    long noticeID;
    Date date;
    String writer;
    String title;
    String content;
    int result;

    ConnectMyDB connectMyDB = null;

    public Notice() {
        noticeID = 0;
        date = null;
        writer = "";
        title = "";
        content = "";
        result = 0;
    }
    public Notice(ConnectMyDB connectMyDB) {
        this.connectMyDB = connectMyDB;
    }

    public void setNoticeID(long noticeID) {
        this.noticeID = noticeID;
    }

    public void setDate (Date date) {
        this.date = date;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }

    public void setTitle (String title) {
        this.title = title;
    }
    public void setContent (String content) {
        this.content = content;
    }
    public void setResult (int result) {
        this.result = result;
    }
    public long getNoticeID() {
        return noticeID;
    }
    public Date getDate() {
        return date;
    }
    public String getWriter() {
        return writer;
    }
    public String getTitle() {
        return title;
    }
    public String getContent() {
        return content;
    }
    public int getResult() {
        return result;
    }
    public void insertNotice(Notice notice) {
        try {
            connectMyDB.insertNotice(notice);
        } catch (SQLException e) {
            System.out.println("insertNotice: Error");
            e.printStackTrace();
        }
    }
    public List<Notice> selectAllNotice() {
        return null; //TODO 임시
    }
}
