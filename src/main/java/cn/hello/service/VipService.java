package cn.hello.service;

import cn.hello.pojo.Vip;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;

import java.util.List;

public interface VipService {
    int addVip(Vip vip)throws DataAccessException;;//增加vip
    int deleteVipByNumber(String vipNumber);//根据电话号码删除
    int updateVip(Vip vip);//修改
    List<Vip> queryVipByNumber(String vipNumber);//根据电话号码查询
    List<Vip> queryAllVip();//查询所有
    List<Vip> queryVipByName(String VipName);//根据名字查询
    Vip queryVipById(int vipId);
}
