package cn.hello.dao;

import cn.hello.pojo.Admin1;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.dao.DataAccessException;

import javax.validation.Valid;

public interface AdminMapper {
    @Select("select * from admin1 where adminId=#{adminId} and adminPassword=#{adminPassword}")
    Admin1 login(@Param("adminId") int adminId, @Param("adminPassword") String adminPassword);//登录
    int register(Admin1 admin) throws DataAccessException;//注册
}
