package cn.hello.service;

import cn.hello.dao.VipMapper;
import cn.hello.pojo.Vip;
import org.apache.ibatis.annotations.Param;
import org.springframework.dao.DataAccessException;

import java.util.List;

public class VipServiceImpl implements VipService{
    private VipMapper vipMapper;
    public void setVipMapper(VipMapper vipMapper) {
        this.vipMapper = vipMapper;
    }
    public int addVip(Vip vip)throws DataAccessException{
        return vipMapper.addVip(vip);
    }
    public int deleteVipByNumber(String vipNumber){
        return vipMapper.deleteVipByNumber(vipNumber);
    }
    public int updateVip(Vip vip){
        return vipMapper.updateVip(vip);
    }
    public List<Vip> queryVipByNumber(String vipNumber){
        return vipMapper.queryVipByNumber(vipNumber);
    }
    public List<Vip> queryAllVip(){
        return vipMapper.queryAllVip();
    }
    public List<Vip> queryVipByName(String VipName) {
        return vipMapper.queryVipByName(VipName);
    }
    public Vip queryVipById(int vipId){return vipMapper.queryVipById(vipId);}
}
