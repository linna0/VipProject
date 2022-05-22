package cn.hello.controller;

import cn.hello.pojo.Admin1;
import cn.hello.service.AdminService;
import com.mchange.v2.util.XORShiftRandomUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import java.io.*;
import java.util.Date;
import java.util.Random;

import static java.lang.System.out;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    @Qualifier("AdminServiceImpl")
    private AdminService adminService;
    @RequestMapping(value="/login",method= RequestMethod.POST)
    public String login(int adminId, String adminPassword,HttpServletRequest request,HttpServletResponse response) throws IOException {
        Admin1 admin= adminService.login(adminId,adminPassword);
        if(admin==null){
            request.setAttribute("error", "用户名或密码不正确，请重新输入！");
            return "login";
        }
        else{
            response.getWriter().write("<script> alert('welcome');window.location='/vip/allvip';</script>");
            //return "redirect:/vip/allvip";
            return null;
        }
    }
    @RequestMapping(value="/login1")
    public String login1(){
       return "login";
    }
    @RequestMapping(value = "/register.html")
    public String toRegister(){
        return "register";
    }
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(@Valid Admin1 admin, HttpServletRequest request, HttpSession session, HttpServletResponse response, @RequestParam("adminPhotoPath1")CommonsMultipartFile file)
            throws IOException {
//        //这里是文件上传的代码
//        System.out.println("exLogin====================================");
//String adminPhotoPath1=null;
//        System.out.println("2");
//if(!attach.isEmpty()){
//    String path=request.getSession().getServletContext().getRealPath("static"+File.separator+"uploadfiles");
//    String oldFileName=attach.getOriginalFilename();//获取原来的文件名
//    String prefix= FilenameUtils.getExtension(oldFileName);//获取文件后缀
//    int filesize=500000;
//    System.out.println("1");
//    if(attach.getSize()>filesize){
//        request.setAttribute("uploadError","文件大小不能超过500Kb");
//        return "redirect:admin/register.html";
//    }
//    else if (prefix.equalsIgnoreCase("jpg")||prefix.equalsIgnoreCase("png")||prefix.equalsIgnoreCase("jpeg"))
//    {
//        Random r=new Random();
//        String fileName=System.currentTimeMillis()+ r.nextInt(1000000)+"_Personal.jpg";
//        File targetFile=new File(path,fileName);
//        if(!targetFile.exists()){
//            targetFile.mkdir();
//        }
//        try {
//            attach.transferTo(targetFile);
//        }catch (Exception e){
//            e.printStackTrace();
//            request.setAttribute("uploadFileError","*上传失败");
//            return "redirect:admin/register.html";
//        }
//        adminPhotoPath1=path+File.separator+fileName;
//    }
//    else {
//        out.println("标记1");
//        request.setAttribute("uploadFileError","图片格式不正确");
//        return "redirect:admin/register.html";
//    }
//}
//        out.print("看看执行到哪里了");
//admin.setAdminPhotoPath(adminPhotoPath1);
        System.out.println(admin);
        String uploadFileName = file.getOriginalFilename();
        //如果文件名为空 直接回到首页
        if("".equals(uploadFileName)){
            return "redirect:/admin/register.html";
        }
        System.out.println("上传文件名:"+uploadFileName);

        //上传路径保存设置
        String path = request.getSession().getServletContext().getRealPath("/upload");
        //如果路径不存在 创建一个
        File realPath = new File(path);
        if(!realPath.exists()){
            realPath.mkdir();
        }
        System.out.println("上传文件保存地址:"+realPath);
        InputStream is = file.getInputStream();//文件输入流
        OutputStream os = new FileOutputStream(new File(realPath,uploadFileName));//文件输出流
        //读取写出
        admin.setAdminPhotoPath(uploadFileName);
        int len = 0;
        byte[] buffer = new byte[1024];
        while((len = is.read(buffer)) != -1){
            os.write(buffer,0,len);
            os.flush();
        }
        os.close();
        is.close();
        int num=0;
        try{
        num=adminService.register(admin);System.out.println("这里是123");
        response.getWriter().write("<script> alert('success');window.location='/admin/login1';</script>");
        }
        catch (DataAccessException e){//这里异常解决主键重复，抛出500太难看。
            e.printStackTrace();
        }
        finally {
        if(num==0) {
            response.getWriter().write("<script>alert('fail，id is wrong');window.location='/admin/register.html';</script>");
        }
        //request.setAttribute("succeed", "恭喜你。注册成功");
        return null;}
        //return "login";
    }

}
