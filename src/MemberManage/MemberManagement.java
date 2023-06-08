package MemberManage;

import JDBC.ConnectMyDB;

import java.sql.SQLException;
import java.time.LocalDate;

public class MemberManagement {
    Member member = null;

    public MemberManagement() {
        member = new Member();
    }

    public Member createMember (String id, String pw, String name, String phoneNumber, int age, String date, String email) {
        member.setMemberID(id);
        member.setPassword(pw);
        member.setSignUpDate(java.sql.Date.valueOf(LocalDate.now()));
        member.setName(name);
        member.setAge(age);
        member.setBirthday(date);
        member.setPhoneNumber(phoneNumber);
        member.setEmail(email);
        return member;
    }

    public boolean insertMember(String id, String pw, String name, String phoneNumber, int age, String date, String email) throws SQLException, ClassNotFoundException {
        member = createMember(id, pw, name, phoneNumber, age, date, email);
        int result =  new ConnectMyDB().insertMember(member);
        return result == 1;
    }
}
