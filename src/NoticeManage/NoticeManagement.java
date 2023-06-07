package NoticeManage;

import java.sql.Date;

public class NoticeManagement {

    Notice notice = null;

    public NoticeManagement(){
        notice = new Notice();
    }

    public Notice createNotice(Date date, String writer, String title, String content, int result) {
            notice.setDate(date);
            notice.setWriter(writer);
            notice.setTitle(title);
            notice.setContent(content);
            notice.setResult(result);
        return notice;
    }
}
