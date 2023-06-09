package BicycleManage;

import java.sql.ResultSet;
import java.util.Date;

public class BicycleUsedHistory {
    private int usedpk;
    private String bicycleID;
    private String fk_office;


    private String memberID;
    private float usedDistance;
    private Date usedDate;
    private int isRent;
    private Date alterTime;
    public int getUsedpk() {
        return usedpk;
    }
    public BicycleUsedHistory() {
    }

    public BicycleUsedHistory(int usedpk, String bicycleID, String fk_office, String memberID, float usedDistance, Date usedDate, int isRent, Date alterTime) {
        this.usedpk = usedpk;
        this.bicycleID = bicycleID;
        this.fk_office = fk_office;
        this.memberID = memberID;
        this.usedDistance = usedDistance;
        this.usedDate = usedDate;
        this.isRent = isRent;
        this.alterTime = alterTime;
    }

    public void setUsedpk(int usedpk) {
        this.usedpk = usedpk;
    }

    public String getBicycleID() {
        return bicycleID;
    }

    public void setBicycleID(String bicycleID) {
        this.bicycleID = bicycleID;
    }

    public String getFk_office() {
        return fk_office;
    }

    public void setFk_office(String fk_office) {
        this.fk_office = fk_office;
    }

    public String getMemberID() {
        return memberID;
    }

    public void setMemberID(String memberID) {
        this.memberID = memberID;
    }

    public float getUsedDistance() {
        return usedDistance;
    }

    public void setUsedDistance(float usedDistance) {
        this.usedDistance = usedDistance;
    }

    public Date getUsedDate() {
        return usedDate;
    }

    public void setUsedDate(Date usedDate) {
        this.usedDate = usedDate;
    }

    public int getIsRent() {
        return isRent;
    }

    public void setIsRent(int isRent) {
        this.isRent = isRent;
    }

    public Date getAlterTime() {
        return alterTime;
    }

    public void setAlterTime(Date alterTime) {
        this.alterTime = alterTime;
    }


}

