package MemberManage;

import JDBC.ConnectMyDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

public class UserController {
    private Member member = null;
    private ConnectMyDB connectMyDB = null;
    private ResultSet rs = null;

    public UserController() throws SQLException, ClassNotFoundException {
        member = new Member();
        connectMyDB = new ConnectMyDB();
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

    public boolean insertMember(Member member) throws SQLException{
        int result = 0;
        try{
            String query = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
            pstmt.setString(1, member.getMemberId());
            pstmt.setString(2, member.getPassword());
            pstmt.setDate(3, member.getSighUpDate());
            pstmt.setString(4, member.getName());
            pstmt.setInt(5, member.getAge());
            pstmt.setString(6, member.getBirthday());
            pstmt.setString(7, member.getPhoneNumber());
            pstmt.setString(8, member.getEmail());
            result = pstmt.executeUpdate();
        } catch(SQLException e) {
            System.out.println("ERROR: CANNOT INSERT");
            e.printStackTrace();
        }

        return result == 1;
    }

    public boolean isExist(String id, String pwd) throws SQLException {
        String query = "select * from member where memberID = ? and password = ?";
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setString(1, id);
        pstmt.setString(2, pwd);

        rs = pstmt.executeQuery();
        return rs.next();
    }

}
