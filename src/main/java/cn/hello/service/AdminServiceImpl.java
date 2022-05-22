package cn.hello.service;

import cn.hello.dao.AdminMapper;
import cn.hello.pojo.Admin1;
import org.springframework.dao.DataAccessException;

import javax.validation.Valid;

public class AdminServiceImpl implements AdminService{
    private AdminMapper adminMapper;
    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }
    public Admin1 login(int adminId, String adminPassword){
        return adminMapper.login(adminId,adminPassword);
    }
    public int register(Admin1 admin) throws DataAccessException {
        return adminMapper.register(admin);
    }
}
