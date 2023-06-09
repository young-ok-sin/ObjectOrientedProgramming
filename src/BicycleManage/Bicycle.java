package BicycleManage;

import java.util.Date;

public class Bicycle {
    private String bicycleID;
    private String officeID;
    private String memberID;
    private Date usedDate;
    private float usedDistance;


    public Bicycle() {
    }

    public Bicycle(String bicycleID, String officeID, String memberID, Date usedDate, float usedDistance, int isRented) {
        this.bicycleID = bicycleID;
        this.officeID = officeID;
        this.memberID = memberID;
        this.usedDate = usedDate;
        this.usedDistance = usedDistance;
        this.isRented = isRented;
    }

    public String getOfficeID() {
        return officeID;
    }

    public void setOfficeID(String officeID) {
        this.officeID = officeID;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public Date getUsedDate() {
        return usedDate;
    }

    public void setUsedDate(Date usedDate) {
        this.usedDate = usedDate;
    }

    public float getUsedDistance() {
        return usedDistance;
    }

    public void setUsedDistance(float usedDistance) {
        this.usedDistance = usedDistance;
    }

    public int getIsRented() {
        return isRented;
    }

    public void setIsRented(int isRented) {
        this.isRented = isRented;
    }

    public String getBicycleID() {
        return bicycleID;
    }

    public void setBicycleID(String bicycleID) {
        this.bicycleID = bicycleID;
    }

    private int isRented;
}
