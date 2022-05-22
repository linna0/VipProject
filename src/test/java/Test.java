import cn.hello.pojo.Admin1;
import cn.hello.pojo.Vip;
import cn.hello.service.AdminService;
import cn.hello.service.VipService;
import cn.hello.service.VipServiceImpl;
import org.springframework.cglib.core.VisibilityPredicate;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    @org.junit.Test
    public void test(){
//        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
//        StudentService StudentServiceImpl= (StudentService) context.getBean("StudentServiceImpl");
//        for(Student student:StudentServiceImpl.queryAllStudent()){
//            System.out.println(student);
//        }
        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        VipService vipServiceImpl= (VipService) context.getBean("VipServiceImpl");
        for(Vip vip:vipServiceImpl.queryAllVip()){
            System.out.println(vip);
        }
    }
    @org.junit.Test
    public void test2(){
        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        VipService vipService= (VipService) context.getBean("VipServiceImpl");
        Vip vip=new Vip();
        vip.setVipId(2);
        vipService.addVip(vip);
    }
    @org.junit.Test
    public void test3(){
        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        AdminService adminService= (AdminService) context.getBean("AdminServiceImpl");
        Admin1 admin=new Admin1();
        admin.setAdminId(288);
        adminService.register(admin);
    }
}
