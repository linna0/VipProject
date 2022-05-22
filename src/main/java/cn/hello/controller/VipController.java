package cn.hello.controller;

import cn.hello.pojo.Vip;
import cn.hello.service.VipService;
import com.mysql.fabric.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/vip")
public class VipController {
@Autowired
    @Qualifier("VipServiceImpl")
    private VipService vipService;

//查询所有学生
@RequestMapping("/allvip")
    public String list(Model model){
    List<Vip> list=vipService.queryAllVip();
    model.addAttribute("list",list);//返回到前端页面
    return "allVip";
}
//只是为了跳转页面
@RequestMapping("/toAddVip")
public String toAddVip(){
        return "AddVip";//这个是跳到add的jsp页面里去
        }
//添加学生
//这个是jsp页面跳转到这里来，然后再return走到allVip上面的那个地方去
    @RequestMapping("/AddVip")
public String addVip(Vip Vip, HttpServletResponse response) throws IOException {
    try{
    vipService.addVip(Vip);
        response.getWriter().write("<script>alert('succeed!');window.location='/vip/allvip'</script>");
    }
    catch (DataAccessException d){
        response.getWriter().write("<script>alert('fail,id is wrong');window.location='/vip/toAddVip'</script>");
        d.printStackTrace();
    }
    return null;
}

@RequestMapping("/toUpdateVip")
public String toUpdateVip(Model model,int id){
    Vip Vip=vipService.queryVipById(id);
    model.addAttribute("Vip",Vip);
    return "UpdateVip";
}
    @RequestMapping("/updateVip")
    public String UpdateVip(Model model,Vip Vip)
    {
        vipService.updateVip(Vip);
//        Vip Vip1=vipService.queryVipById(Vip.getVipId());
//        model.addAttribute("Vip",Vip1);
        return "redirect:/vip/allvip";//重定向到上文的allVip里面，然后再找
    }
    @RequestMapping("/del/{VipNumber}")
    public String deleteBook(@PathVariable("VipNumber") String number) {
vipService.deleteVipByNumber(number);
        return "redirect:/vip/allvip";
    }
    @RequestMapping("/queryVip")//根据姓名查询
    public String queryVip(String queryVipName,Model model){
    //这里接受到的queryVipName，是jsp里面的name属性
        List<Vip> Vip2=vipService.queryVipByName(queryVipName);
        List<Vip> list=new ArrayList<Vip>();
        list.addAll(Vip2);
        if(Vip2==null){
            list=vipService.queryAllVip();
//            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);//返回到前端页面
        return "allVip";
    }
    @RequestMapping("/queryVipNumber")//根据电话号码查询
    public String queryVipNumber(String queryVipNumber,Model model){
        //这里接受到的queryVipName，是jsp里面的name属性
        List<Vip> Vip1=vipService.queryVipByNumber(queryVipNumber);
        List<Vip> list=new ArrayList<Vip>();
        list.addAll(Vip1);
        if(Vip1==null){
            list=vipService.queryAllVip();
            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);//返回到前端页面
        return "allVip";
    }

}