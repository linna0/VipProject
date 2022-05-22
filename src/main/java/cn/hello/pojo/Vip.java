package cn.hello.pojo;

public class Vip {

    private int vipId;//会员卡号
    private String vipName;//会员姓名
    private String vipNumber;//会员电话号码
    private String vipGender;//性别
    private String vipState;//会员卡状态，挂失，正常，已销卡
    private int vipBalance;//会员卡余额
    private String vipGrade;//会员卡等级

    public Vip(int vipId, String vipName, String vipNumber, String vipGender, String vipState, int vipBalance, String vipGrade) {
        this.vipId = vipId;
        this.vipName = vipName;
        this.vipNumber = vipNumber;
        this.vipGender = vipGender;
        this.vipState = vipState;
        this.vipBalance = vipBalance;
        this.vipGrade = vipGrade;
    }
    public Vip() {

    }

    public int getVipId() {
        return vipId;
    }

    public void setVipId(int vipId) {
        this.vipId = vipId;
    }

    public String getVipName() {
        return vipName;
    }

    public void setVipName(String vipName) {
        this.vipName = vipName;
    }

    public String getVipNumber() {
        return vipNumber;
    }

    public void setVipNumber(String vipNumber) {
        this.vipNumber = vipNumber;
    }

    public String getVipGender() {
        return vipGender;
    }

    public void setVipGender(String vipGender) {
        this.vipGender = vipGender;
    }

    public String getVipState() {
        return vipState;
    }

    public void setVipState(String vipState) {
        this.vipState = vipState;
    }

    public int getVipBalance() {
        return vipBalance;
    }

    public void setVipBalance(int vipBalance) {
        this.vipBalance = vipBalance;
    }

    public String getVipGrade() {
        return vipGrade;
    }

    public void setVipGrade(String vipGrade) {
        this.vipGrade = vipGrade;
    }

    public String toString() {
        return "Vip{" +
                "vipId=" + vipId +
                ", vipName='" + vipName + '\'' +
                ", vipNumber=" + vipNumber +
                ", vipGender='" + vipGender + '\'' +
                ", vipState='" + vipState + '\'' +
                ", vipBalance=" + vipBalance +
                ", vipGrade='" + vipGrade + '\'' +
                '}';
    }
}
