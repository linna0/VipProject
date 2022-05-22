<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Preskool - vip</title>
<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&amp;display=swap">
<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="https://www.jq22.com/jquery/bootstrap-5.0.0.css">
<!-- Fontawesome CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/fontawesome/css/all.min.css">
<!-- Datatables CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/datatables/datatables.min.css">
<!-- Main CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<!-- Main Wrapper -->
<div class="main-wrapper"><!-- Header -->
  <div class="header"><!-- Logo -->
    <div class="header-left">
      <a href="index.html" class="logo"><img src="${pageContext.request.contextPath}/static/img/logo.png" alt="Logo"></a><a href="index.html" class="logo logo-small"><img src="${pageContext.request.contextPath}/static/img/logo-small.png" alt="Logo" width="30" height="30"></a></div>
    <div class="container">
      <div class="row clearfix">
        <div class="col-md-12 column">
          <div class="page-header">
            <h1 style="text-align: center">
              <small>会员列表 —— 显示所有会员</small>
            </h1>
          </div>
        </div>
      </div>
      <div class="row clearfix">
        <div class="column col-4" style="padding-left:250px;padding-bottom:0">
          <p><a class="form-inline btn btn-primary" style="margin-right:2px;" href="${pageContext.request.contextPath}/vip/toAddVip">新增</a>
          <a href="${pageContext.request.contextPath}/vip/allvip" method="post" class="form-inline btn btn-primary">全部会员</a></p>
        </div>
        <%--查询学生--%>
        <div class="column col-4" style="padding-left:50px;padding-bottom:0">
          <form action="${pageContext.request.contextPath}/vip/queryVip" method="post" class="form-inline">
            <input type="text" name="queryVipName" placeholder="请输入查询的会员姓名" >
            <input type="submit" value="查询" class="btn btn-primary">
            <span style="color:red;font-weight:bold;" >${error}</span>
        </form>
        </p>
        </div>
        <div class="column col-4 padding-bottom:0px">
          <form action="${pageContext.request.contextPath}/vip/queryVipNumber" method="post" class="form-inline">
            <input type="text" name="queryVipNumber" placeholder="请输入查询的电话号码" >
            <input type="submit" value="查询" class="btn btn-primary">
            <span style="color:red;font-weight:bold;">${error}</span>
          </form>
        </div>
      </div></div></div>
  <div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
      <div id="sidebar-menu" class="sidebar-menu">
        <ul>
          <li class="menu-title"><span>Main Menu</span></li>
          <li><a href="index.html"><i class="fas fa-th-large"></i><span>Dashboard</span></a></li>
          <li class="submenu active"><a href="#"><i class="fas fa-user-graduate"></i><span>vip</span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="${pageContext.request.contextPath}/vip/allvip" class="active">VIP List</a></li>
              <li><a href="${pageContext.request.contextPath}/vip/toAddVip">VIP Add</a></li>
            </ul>
          </li>
          <li class="submenu"><a href="#"><i class="fas fa-chalkboard-teacher"></i><span>Teachers</span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="teachers.html">Teacher List</a></li>
              <li><a href="teacher-details.html">Teacher View</a></li>
              <li><a href="add-teacher.html">Teacher Add</a></li>
              <li><a href="edit-teacher.html">Teacher Edit</a></li>
            </ul>
          </li>
          <li class="submenu"><a href="#"><i class="fas fa-building"></i><span>Departments</span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="departments.html">Department List</a></li>
              <li><a href="add-department.html">Department Add</a></li>
              <li><a href="edit-department.html">Department Edit</a></li>
            </ul>
          </li>
          <li class="submenu"><a href="#"><i class="fas fa-book-reader"></i><span>Subjects</span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="subjects.html">Subject List</a></li>
              <li><a href="add-subject.html">Subject Add</a></li>
              <li><a href="edit-subject.html">Subject Edit</a></li>
            </ul>
          </li>
          <li class="menu-title"><span>Management</span></li>
          <li class="submenu"><a href="#"><i class="fas fa-file-invoice-dollar"></i><span>Accounts</span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="fees-collections.html">Fees Collection</a></li>
              <li><a href="expenses.html">Expenses</a></li>
              <li><a href="salary.html">Salary</a></li>
              <li><a href="add-fees-collection.html">Add Fees</a></li>
              <li><a href="add-expenses.html">Add Expenses</a></li>
              <li><a href="add-salary.html">Add Salary</a></li>
            </ul>
          </li>
          <li><a href="holiday.html"><i class="fas fa-holly-berry"></i><span>Holiday</span></a></li>
          <li><a href="fees.html"><i class="fas fa-comment-dollar"></i><span>Fees</span></a></li>
          <li><a href="exam.html"><i class="fas fa-clipboard-list"></i><span>Exam list</span></a></li>
          <li><a href="event.html"><i class="fas fa-calendar-day"></i><span>Events</span></a></li>
          <li><a href="time-table.html"><i class="fas fa-table"></i><span>Time Table</span></a></li>
          <li><a href="library.html"><i class="fas fa-book"></i><span>Library</span></a></li>
          <li class="menu-title"><span>Pages</span></li>
          <li class="submenu"><a href="#"><i class="fas fa-shield-alt"></i><span>Authentication </span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="login.html">Login</a></li>
              <li><a href="register.html">Register</a></li>
              <li><a href="forgot-password.html">Forgot Password</a></li>
              <li><a href="error-404.html">Error Page</a></li>
            </ul>
          </li>
          <li><a href="blank-page.html"><i class="fas fa-file"></i><span>Blank Page</span></a></li>
          <li class="menu-title"><span>Others</span></li>
          <li><a href="sports.html"><i class="fas fa-baseball-ball"></i><span>Sports</span></a></li>
          <li><a href="hostel.html"><i class="fas fa-hotel"></i><span>Hostel</span></a></li>
          <li><a href="transport.html"><i class="fas fa-bus"></i><span>Transport</span></a></li>
          <li class="menu-title"><span>UI Interface</span></li>
          <li><a href="components.html"><i class="fas fa-vector-square"></i><span>Components</span></a></li>
          <li class="submenu"><a href="#"><i class="fas fa-columns"></i><span>Forms </span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="form-basic-inputs.html">Basic Inputs </a></li>
              <li><a href="form-input-groups.html">Input Groups </a></li>
              <li><a href="form-horizontal.html">Horizontal Form </a></li>
              <li><a href="form-vertical.html">Vertical Form </a></li>
              <li><a href="form-mask.html">Form Mask </a></li>
              <li><a href="form-validation.html">Form Validation </a></li>
            </ul>
          </li>
          <li class="submenu"><a href="#"><i class="fas fa-table"></i><span>Tables </span><span class="menu-arrow"></span></a>
            <ul>
              <li><a href="tables-basic.html">Basic Tables </a></li>
              <li><a href="data-tables.html">Data Table </a></li>
            </ul>
          </li>
          <li class="submenu"><a href="javascript:void(0);"><i class="fas fa-code"></i><span>Multi Level</span><span class="menu-arrow"></span></a>
            <ul>
              <li class="submenu"><a href="javascript:void(0);"><span>Level 1</span><span class="menu-arrow"></span></a>
                <ul>
                  <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
                  <li class="submenu"><a href="javascript:void(0);"><span>Level 2</span><span class="menu-arrow"></span></a>
                    <ul>
                      <li><a href="javascript:void(0);">Level 3</a></li>
                      <li><a href="javascript:void(0);">Level 3</a></li>
                    </ul>
                  </li>
                  <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
                </ul>
              </li>
              <li><a href="javascript:void(0);"><span>Level 1</span></a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>

  <!-- /Sidebar --><!-- Page Wrapper -->
  <div class="page-wrapper" style="padding-top:0px;margin-top:100px;">
    <div class="content container-fluid" ><!-- Page Header -->
      <div class="page-header">
        <div class="row align-items-center">
          <div class="col">
            <h3 class="page-title">vip</h3>
            <ul class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
              <li class="breadcrumb-item active">vip</li>
            </ul>
          </div>
<%--          <a href="${pageContext.request.contextPath}/vip/toAddVip" class="btn btn-primary" style="width:40px"><i class="fas fa-plus"></i></a>--%>
          <div class="col-auto text-right float-right ml-auto">
            <a href="#" class="btn btn-outline-primary mr-2"><i class="fas fa-download"></i>Download</a>
            <a href="${pageContext.request.contextPath}/vip/toAddVip" class="btn btn-primary"><i class="fas fa-plus"></i></a></div>
        </div>
      </div>
      <!-- /Page Header -->
      <div class="row" >
        <div class="col-sm-12" >
          <div class="card card-table" >
            <div class="card-body" >
              <div class="table-responsive">
                <table class="table table-hover table-center p-t-0 datatable">
                  <thead>
                  <tr>
                    <th>会员号</th>
                    <th>会员名</th>
                    <th>电话</th>
                    <th>性别</th>
                    <th>卡状态</th>
                    <th>余额</th>
                    <th>等级</th>
                    <th>操作</th>
                  </tr>
                  </thead>

                  <tbody>
                  <c:forEach var="vip" items="${requestScope.get('list')}">
                    <tr>
                      <td>${vip.getVipId()}</td>
                      <td>${vip.getVipName()}</td>
                      <td>${vip.getVipNumber()}</td>
                      <td>${vip.getVipGender()}</td>
                      <td>${vip.getVipState()}</td>
                      <td>${vip.getVipBalance()}</td>
                      <td>${vip.getVipGrade()}</td>
<%--                      <td>--%>
<%--                        <a href="${pageContext.request.contextPath}/vip/toUpdateVip?id=${vip.getVipId()}">更改</a> |--%>
<%--                        <a href="${pageContext.request.contextPath}/vip/del/${vip.getVipNumber()}">删除</a>--%>
<%--                      </td>--%>
                      <td class="text-right">
                    <div class="actions">
                    <a href="${pageContext.request.contextPath}/vip/toUpdateVip?id=${vip.getVipId()}" class="btn btn-sm bg-success-light mr-2">
                    <i class="fas fa-pen"></i></a>
                    <a href="${pageContext.request.contextPath}/vip/del/${vip.getVipNumber()}" class="btn btn-sm bg-danger-light" ><i class="fas fa-trash"></i></a></div></td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer>
      <p>@2019213029yln</p>
    </footer></div>
      <!-- /Page Wrapper --></div>

<!-- /Main Wrapper --><!-- jQuery --><script src="https://www.jq22.com/jquery/jquery-3.3.1.js"></script>
    <!-- Bootstrap Core JS --><script src="${pageContext.request.contextPath}/static/js/popper.min.js">
    </script><script src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js">
    </script><!-- Slimscroll JS --><script src="${pageContext.request.contextPath}/static/plugins/slimscroll/jquery.slimscroll.min.js"></script><!-- Datatables JS -->
    <script src="${pageContext.request.contextPath}/static/plugins/datatables/datatables.min.js"></script><!-- Custom JS -->
    <script src="${pageContext.request.contextPath}/static/js/script.js"></script>
</body>
</html>