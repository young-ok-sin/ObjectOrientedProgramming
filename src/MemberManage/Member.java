package MemberManage;

import JDBC.ConnectMyDB;

import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;

public class Member {
    private String memberID;
    private String password;
    private Date signUpDate;
    private String name;
    private int age;
    private String birthday;
    private String phoneNumber;
    private String email;

    public Member() {
        memberID = null;
        password = null;
        signUpDate = java.sql.Date.valueOf(LocalDate.now());
        name = null;
        age = 0;
        birthday = null;
        phoneNumber = null;
        email = "";
    }

    public Member(String id, String name, int age, String date, String phoneNumber) {
        memberID = id;
        this.name = name;
        this.age = age;
        birthday = date;
        this.phoneNumber = phoneNumber;
    }


    public String getMemberId() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getSighUpDate() {
        return signUpDate;
    }

    public void setSignUpDate(Date signUpDate) {
        this.signUpDate = signUpDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
