package cn.hello.pojo;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import javax.validation.constraints.NotNull;


public class Admin1 {
    @NotNull(message="用户账号不为空")//jsr303数据校验
    private int adminId;//管理员账号
    @NotEmpty(message="用户名称不为空")
    private String adminName;//管理员姓名
    @NotEmpty(message="密码不为空")
    @Length(min=6,max=13,message = "用户密码长度必须为6-13")
    private String adminPassword;//管理员密码
    @NotEmpty(message = "邮箱不为空")
    @Email
    private String adminEmail;//管理员邮箱
    @NotEmpty
    @Length(min=11,max=11,message = "号码格式错误")
    private String adminNumber;//管理员电话
    private String adminRole;//管理员角色，普通管理员，中级管理员
    @NotEmpty
    private String adminPhotoPath;//证件照地址
public Admin1(){

}
    public Admin1(int adminId, String adminName, String adminPassword, String adminEmail, String adminNumber, String adminRole, String adminPhotoPath) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminPassword = adminPassword;
        this.adminEmail = adminEmail;
        this.adminNumber = adminNumber;
        this.adminRole = adminRole;
        this.adminPhotoPath = adminPhotoPath;
    }

    public String getAdminPhotoPath() {
        return adminPhotoPath;
    }

    public void setAdminPhotoPath(String adminPhotoPath) {
        this.adminPhotoPath = adminPhotoPath;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public String getAdminNumber() {
        return adminNumber;
    }

    public void setAdminNumber(String adminNumber) {
        this.adminNumber = adminNumber;
    }

    public String getAdminRole() {
        return adminRole;
    }

    public void setAdminRole(String adminRole) {
        this.adminRole = adminRole;
    }

    @Override
    public String toString() {
        return "Admin1{" +
                "adminId=" + adminId +
                ", adminName='" + adminName + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                ", adminEmail='" + adminEmail + '\'' +
                ", adminNumber='" + adminNumber + '\'' +
                ", adminRole='" + adminRole + '\'' +
                ", AdminPhotoPath='" + adminPhotoPath + '\'' +
                '}';
    }
}
