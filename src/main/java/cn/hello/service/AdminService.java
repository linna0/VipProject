package cn.hello.service;

import cn.hello.pojo.Admin1;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;

import javax.validation.Valid;

public interface AdminService {
    Admin1 login(int adminId, String adminPassword);
    int register(Admin1 admin) throws DataAccessException;
}
