import NoticeManage.Notice;
import NoticeManage.NoticeManagement;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        NoticeManagement noticeManagement = new NoticeManagement();
        List<Notice> list = new ArrayList<>();
        list = noticeManagement.inquiryNoticeAll(1);
        for(int i=0; i<list.size(); i++) {
            System.out.printf("%d\t 일시: %s\t 작성자: %s\t 제목: %s\t 내용: %s \n",i+1,list.get(i).getDate().toString(), list.get(i).getWriter(), list.get(i).getTitle(), list.get(i).getContent());
        }

    }
}