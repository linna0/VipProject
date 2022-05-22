package cn.hello.dao;
import cn.hello.pojo.Vip;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;

import java.util.List;

public interface VipMapper {
    int addVip(Vip vip)throws DataAccessException;;//增加vip
    int deleteVipByNumber(@Param("vipNumber") String vipNumber);//根据vip的电话号码删除
    int updateVip(Vip vip);//修改vip用户信息
    List<Vip> queryVipByNumber(@Param("vipNumber") String vipNumber);//根据电话号码查询
    Vip queryVipById(@Param("vipId") int vipId);//根据vip账号查询
    List<Vip> queryAllVip();//显示所有的vip信息
    List<Vip> queryVipByName(@Param("vipName") String vipName);//根据姓名进行查询
}
