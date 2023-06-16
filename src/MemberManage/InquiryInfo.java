package MemberManage;

import JDBC.ConnectMyDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InquiryInfo {

    private ConnectMyDB connectMyDB = null;
    private ResultSet rs = null;

    public InquiryInfo() throws SQLException, ClassNotFoundException {
        connectMyDB = new ConnectMyDB();
    }

    public Member getMemberInfo(String id) throws SQLException {
        String query = "select * from member where memberID = ?";
        PreparedStatement pstmt = connectMyDB.getConnection().prepareStatement(query);
        pstmt.setString(1, id);

        rs = pstmt.executeQuery();
        if(rs.next()) {
            String name = rs.getString("name");
            int age = rs.getInt("age");
            String date = rs.getString("birthday");
            String phoneNumber = rs.getString("phoneNumber");

            connectMyDB.disConnectMyDB();
            return new Member(id, name, age, date, phoneNumber);
        }
        try{
            if(connectMyDB.getConnection() != null) connectMyDB.getConnection().close();
            if(pstmt != null) pstmt.close();
            if(rs != null) rs.close();
        } catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
