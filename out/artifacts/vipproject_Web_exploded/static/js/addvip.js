window.onload = function(){
  var vipIdErrorSpan=document.getElementById("vipIdError");
  var idElt=document.getElementById("vipId");
  var vipNameErrorSpan=document.getElementById("vipNameError");
  var vipNameElt=document.getElementById("vipName");
  var vipNumberErrorSpan=document.getElementById("vipNumberError");
  var vipNumberElt=document.getElementById("vipNumber");
  var vipBalanceErrorSpan=document.getElementById("vipBalanceError");
  var vipBalanceElt=document.getElementById("vipBalance");

  vipBalanceElt.onblur=function (){
    var id=vipBalanceElt.value;
    id=id.trim();
    if(id==""){
      vipBalanceErrorSpan.innerHTML="*余额不能为空";
    }
    else{
      if(isNaN(id)){
        vipBalanceErrorSpan.innerText="*余额只能由数字组成";
      }
      else{}
    }
  }
  vipBalanceElt.onfocus=function (){
    if(vipBalanceErrorSpan.innerText!==""){
      vipBalanceElt.value="";
    }
    vipBalanceErrorSpan.innerText="";
  }
  vipNumberElt.onblur=function (){
    var id=vipNumberElt.value;
    id=id.trim();
    if(id==""){
      vipNumberErrorSpan.innerHTML="*号码不能为空";
    }
    else{
      if(isNaN(id)||id.length!=11){
        vipNumberErrorSpan.innerText="*号码格式不正确";
      }
      else{
      }
    }
  }
  vipNumberElt.onfocus=function (){
    if(vipNumberErrorSpan.innerText!==""){
      vipNumberElt.value="";
    }
    vipNumberErrorSpan.innerText="";
  }
  vipNameElt.onblur=function (){
    var id=vipNameElt.value;
    id=id.trim();
    if(id==""){
      vipNameErrorSpan.innerHTML="*姓名不能为空";
    }
    else{
    }
  }
  vipNameElt.onfocus=function (){
    if(vipNameErrorSpan.innerText!==""){
      vipNameElt.value="";
    }
    vipNameErrorSpan.innerText="";
  }
  idElt.onblur=function (){
    var id=idElt.value;
    id=id.trim();
    if(id==""){
      vipIdErrorSpan.innerHTML="*账号不能为空";
    }
    else{
      if(isNaN(id)){
        vipIdErrorSpan.innerText="*账号只能由数字组成";
      }
      else{}
    }
  }
  idElt.onfocus=function (){
    if(vipIdErrorSpan.innerText!==""){
      idElt.value="";
    }
    vipIdErrorSpan.innerText="";
  }

  var submitBtnElt=document.getElementById("submitBtn");
  submitBtn.onclick=function (){
    idElt.focus();
    idElt.blur();
    vipNameElt.focus();
    vipNameElt.blur();
    vipNumberElt.focus();
    vipNumberElt.blur();
    vipBalanceElt.focus();
    vipBalanceElt.blur();
    if(vipIdErrorSpan.innerText===""&&vipNameErrorSpan.innerText===""&&vipNumberErrorSpan.innerText===""&&vipBalanceErrorSpan.innerText===""){
      var  adminFormElt=document.getElementById("actionForm");
      adminFormElt.action="${pageContext.request.contextPath }/vip/allvip";
      // alert("登陆成功，欢迎进入会员管理系统");
      adminFormElt.submit();
    }
  }
}