package NoticeManage;

import java.sql.Date;

public class Notice {
    Date date;
    String writer;
    String title;
    String content;
    int result;

    public Notice() {
        date = null;
        writer = "";
        title = "";
        content = "";
        result = 0;
    }
    public void setDate(Date date) {
        this.date = date;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setResult(int result) {
        this.result = result;
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

}
