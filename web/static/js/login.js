function checkAdminId(obj){
  var id=obj;
  if(id.trim().length==0){
    var tipcheck1=document.getElementById("tipcheck1");
    tipcheck1.innerHTML="管理员账号不能为空";
    obj.focus();
  }
  else if(isNaN(id.trim())){
    var tipcheck2=document.getElementById("tipcheck2");
    tipcheck2.innerHTML="管理员账号不合法";
  }
  else{
    var tipcheck3=document.getElementById("tipcheck3");
    tipcheck3.innerHTML="正确";
  }
}
function checkAdminPwd(obj){
  var pwd=obj;
  if(pwd.trim().length==0){
    var tipcheck=document.getElementById("tipcheck");
    tipcheck.innerHTML="密码不能为空";
  }
  else {

  }
}