<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Preskool - Students</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/static/img/favicon.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&amp;display=swap">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="https://www.jq22.com/jquery/bootstrap-5.0.0.css">
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/fontawesome/css/all.min.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
</head>
<body>
<!-- Main Wrapper -->
<div class="main-wrapper"><!-- Header -->
    <div class="header"><!-- Logo -->
        <div class="header-left"><a href="index.html" class="logo"><img src="${pageContext.request.contextPath}/static/img/logo.png" alt="Logo"></a><a href="index.html" class="logo logo-small"><img src="${pageContext.request.contextPath}/static/img/logo-small.png" alt="Logo" width="30" height="30"></a></div>
        <!-- /Logo --><a href="javascript:void(0);" id="toggle_btn"><i class="fas fa-align-left"></i></a><!-- Search Bar -->
        <div class="top-nav-search">
            <form>
                <input type="text" class="form-control" placeholder="Search here">
                <button class="btn" type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>
        <!-- /Search Bar --><!-- Mobile Menu Toggle --><a class="mobile_btn" id="mobile_btn"><i class="fas fa-bars"></i></a><!-- /Mobile Menu Toggle --><!-- Header Right Menu -->
        <ul class="nav user-menu">
            <!-- Notifications -->
            <li class="nav-item dropdown noti-dropdown"><a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><i class="far fa-bell"></i><span class="badge badge-pill">3</span></a>
                <div class="dropdown-menu notifications">
                    <div class="topnav-dropdown-header"><span class="notification-title">Notifications</span><a href="javascript:void(0)" class="clear-noti">Clear All </a></div>
                    <div class="noti-content">
                        <ul class="notification-list">
                            <li class="notification-message"><a href="#">
                                <div class="media"><span class="avatar avatar-sm"><img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/static/img/profiles/avatar-02.jpg"></span>
                                    <div class="media-body">
                                        <p class="noti-details"><span class="noti-title">Carlson Tech</span>has approved <span class="noti-title">your estimate</span></p>
                                        <p class="noti-time"><span class="notification-time">4 mins ago</span></p>
                                    </div>
                                </div>
                            </a></li>
                            <li class="notification-message"><a href="#">
                                <div class="media"><span class="avatar avatar-sm"><img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/static/img/profiles/avatar-11.jpg"></span>
                                    <div class="media-body">
                                        <p class="noti-details"><span class="noti-title">International Software Inc</span>has sent you a invoice in the amount of <span class="noti-title">$218</span></p>
                                        <p class="noti-time"><span class="notification-time">6 mins ago</span></p>
                                    </div>
                                </div>
                            </a></li>
                            <li class="notification-message"><a href="#">
                                <div class="media"><span class="avatar avatar-sm"><img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/static/img/profiles/avatar-17.jpg"></span>
                                    <div class="media-body">
                                        <p class="noti-details"><span class="noti-title">John Hendry</span>sent a cancellation request <span class="noti-title">Apple iPhone XR</span></p>
                                        <p class="noti-time"><span class="notification-time">8 mins ago</span></p>
                                    </div>
                                </div>
                            </a></li>
                            <li class="notification-message"><a href="#">
                                <div class="media"><span class="avatar avatar-sm"><img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/static/img/profiles/avatar-13.jpg"></span>
                                    <div class="media-body">
                                        <p class="noti-details"><span class="noti-title">Mercury Software Inc</span>added a new product <span class="noti-title">Apple MacBook Pro</span></p>
                                        <p class="noti-time"><span class="notification-time">12 mins ago</span></p>
                                    </div>
                                </div>
                            </a></li>
                        </ul>
                    </div>
                    <div class="topnav-dropdown-footer"><a href="#">View all Notifications</a></div>
                </div>
            </li>
            <!-- /Notifications --><!-- User Menu -->
            <li class="nav-item dropdown has-arrow"><a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><span class="user-img"><img class="rounded-circle" src="${pageContext.request.contextPath}/static/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span></a>
                <div class="dropdown-menu">
                    <div class="user-header">
                        <div class="avatar avatar-sm"><img src="${pageContext.request.contextPath}/static/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle"></div>
                        <div class="user-text">
                            <h6>Ryan Taylor</h6>
                            <p class="text-muted mb-0">Administrator</p>
                        </div>
                    </div>
                    <a class="dropdown-item" href="profile.html">My Profile</a><a class="dropdown-item" href="inbox.html">Inbox</a><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/login1">Logout</a></div>
            </li>
            <!-- /User Menu -->
        </ul>
        <!-- /Header Right Menu --></div>
    <!-- /Header --><!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="menu-title"><span>Main Menu</span></li>
                    <li><a href="index.html"><i class="fas fa-th-large"></i><span>Dashboard</span></a></li>
                    <li class="submenu active"><a href="#"><i class="fas fa-user-graduate"></i><span>Students</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/vip/allvip">vip List</a></li>
                            <li><a href="add-student.html" class="active">vip Add</a></li>
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
    <div class="page-wrapper">
        <div class="content container-fluid"><!-- Page Header -->
            <div class="page-header">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">修改vip用户信息</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/vip/allvip">VIP</a></li>
                            <li class="breadcrumb-item active">修改vip</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->
            <div class="container card p-20" style="margin:30px">
                <form action="${pageContext.request.contextPath}/vip/updateVip" method="post">
<%--                    <label class="col-2 column" for="vipId" style="font-size:25px;margin:20px;;margin:20px;">会员号 ：</label>--%>
<%--                    <input type="text" name="vipId" class="col-8 column" style="height:40px;margin:20px;" id="vipId" placeholder="会员号 ：">--%>
<%--                    <label class="col-2 column" for="vipName" style="font-size:25px;margin:20px;">会员名：</label>--%>
<%--                    <input type="text" name="vipName" class="col-8 column" id="vipName" style="height:40px;margin:20px;" placeholder="会员名">--%>
<%--                    <label class="col-2 column" for="vipNumber" style="font-size:25px;margin:20px;">电话号码：</label>--%>
<%--                    <input type="text" name="vipNumber" class="col-8 column" id="vipNumber"style="height:40px;margin:20px;" placeholder="电话号码">--%>
<%--                    <label class="col-2 column" for="vipGender" style="font-size:25px;margin:20px;">性别:</label>--%>
<%--                    <select name="vipGender" id="vipGender" class="col-8 column" id="vipGender" style="height:40px;margin:20px;">--%>
<%--                        <option value="男">男</option>--%>
<%--                        <option value="女">女</option>--%>
<%--                    </select>--%>
<%--                    <label class="col-2 column" for="vipState" style="font-size:25px;margin:20px;">卡状态：</label>--%>
<%--                    <select name="vipState" id="vipState" class="col-8 column" style="height:40px;margin:20px;">--%>
<%--                        <option value="正常" selected="selected">正常</option>--%>
<%--                        <option value="挂失">挂失</option>--%>
<%--                        <option value="注销">注销</option>--%>
<%--                    </select>--%>
<%--                    <label class="col-2 column" for="vipBalance" style="font-size:25px;margin:20px;">余额：</label>--%>
<%--                    <input type="text" name="vipBalance"  class="col-8 column" id="vipBalance" style="height:40px;margin:20px;" placeholder="余额">--%>
<%--                    <label class="col-2 column" for="vipGrade" style="font-size:25px;margin:20px;">级别：</label>--%>
<%--                    <select name="vipGrade" id="vipGrade"  class="col-8 column" style="height:40px;margin:20px;">--%>
<%--                        <option value="小会员" selected="selected">小会员</option>--%>
<%--                        <option value="大会员">大会员</option>--%>
<%--                        <option value="黑卡会员">黑卡会员</option>--%>
<%--                    </select>--%>
    <div class="row mb-3">
        <label  for="vipId" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">会员账号:</label>
        <div class="col-sm-7 col-7">
            <input type="text" name="vipId" class="form-control"  id="vipId"  value="${Vip.vipId}">
        </div>
        <div class="col-sm-2 col-2">
            <span id="vipIdError" style="color:red;font-size:3px;"></span>
        </div>
    </div>
    <div class="row mb-3">
        <label  for="vipName" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">会员名：</label>
        <div class="col-sm-7 col-7">
            <input type="text" name="vipName" class=" form-control" id="vipName"  value="${Vip.vipName}"></div>
        <div class="col-sm-2 col-2">
            <span id="vipNameError" style="color:red;font-size:3px;"></span>
        </div>
    </div>
    <div class="row mb-3">
        <label for="vipNumber"class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:35px;">电话号码：</label>
        <div class="col-sm-7 col-7">
            <input type="text" name="vipNumber" class=" form-control" id="vipNumber" value="${Vip.vipNumber}"></div>  <div class="col-sm-2 col-2">
        <span id="vipNumberError" style="color:red;font-size:3px;"></span>
    </div></div>
    <div class="row mb-3">

        <label  for="vipGender" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">性别:</label><div class="col-sm-7 col-7">
        <select name="vipGender" id="vipGender" class="dropdown-toggle form-control" id="vipGender">
            <option value="${Vip.vipGender}">${Vip.vipGender}</option>
            <option value="男">男</option>
            <option value="女">女</option>
        </select></div></div>
    <div class="row mb-3">
        <label  for="vipState"class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">卡状态：</label><div class="col-sm-7 col-7">
        <select name="vipState" id="vipState" class=" form-control" >
            <option value="${Vip.vipState}">${Vip.vipState}</option>
            <option value="正常">正常</option>
            <option value="挂失">挂失</option>
            <option value="注销">注销</option>
        </select></div></div>
    <div class="row mb-3">
        <label class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;" for="vipBalance">余额：</label>
        <div class="col-sm-7 col-7">
            <input type="text" name="vipBalance"  class=" form-control" id="vipBalance"  value="${Vip.vipBalance}"></div>
        <div class="col-sm-2 col-2">
            <span id="vipBalanceError" style="color:red;font-size:2px;"></span>
        </div>
    </div>

    <div class="row mb-3">
        <label  for="vipGrade" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">级别：</label><div class="col-sm-7 col-7">
        <select name="vipGrade" id="vipGrade"  class=" form-control" >
            <option value="${Vip.vipGrade}">${Vip.vipGrade}</option>
            <option value="小会员">小会员</option>
            <option value="大会员">大会员</option>
            <option value="黑卡会员">黑卡会员</option>
        </select>
    </div></div>
                    <br><br>
                    <input type="submit" value="保存" class="btn btn-primary" style="margin-left:30%;width:100px">
                    <input type="reset" value="重置" class="btn btn-primary" style="margin-left:20%;width:100px">
                </form>

            </div>
        </div>
    </div>
    <!-- /Page Wrapper --></div>
<!-- /Main Wrapper --><!-- jQuery --><script src="https://www.jq22.com/jquery/jquery-3.3.1.js"></script><!-- Bootstrap Core JS --><script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script><script src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script><!-- Slimscroll JS --><script src="${pageContext.request.contextPath}/static/plugins/slimscroll/jquery.slimscroll.min.js"></script><!-- Custom JS --><script src="${pageContext.request.contextPath}/static/js/script.js"></script>
</body>
</html>