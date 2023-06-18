package BicycleManage;

public class RentalOffice {

    private String officeID;
    private String name;
    private String location;
    private int currentBicycleCnt;
    private int maximumBicycleCnt;
    public RentalOffice(String officeID, String name, String location, int currentBicycleCnt, int maximumBicycleCnt) {
        this.officeID = officeID;
        this.name = name;
        this.location = location;
        this.currentBicycleCnt = currentBicycleCnt;
        this.maximumBicycleCnt = maximumBicycleCnt;
    }

    public RentalOffice() {
    }

    public String getOfficeID() {
        return officeID;
    }

    public void setOfficeID(String officeID) {
        this.officeID = officeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getCurrentBicycleCnt() {
        return currentBicycleCnt;
    }

    public void setCurrentBicycleCnt(int currentBicycleCnt) {
        this.currentBicycleCnt = currentBicycleCnt;
    }

    public int getMaximumBicycleCnt() {
        return maximumBicycleCnt;
    }

    public void setMaximumBicycleCnt(int maximumBicycleCnt) {
        this.maximumBicycleCnt = maximumBicycleCnt;
    }


}
