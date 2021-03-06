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
    <div class="page-wrapper" style="padding-left: 100px;padding-right: 100px">
        <div class="content container-fluid card m-t-50 "><!-- Page Header -->
            <div class="page-header card-header ">
                <div class="row align-items-center">
                    <div class="col">
                        <h3 class="page-title">??????VIP</h3>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/vip/allvip">???????????????</a></li>
                            <li class="breadcrumb-item active">??????vip</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- /Page Header -->
            <div class="container card-body">

                <form action="${pageContext.request.contextPath}/vip/AddVip" method="post">
                    <div class="row mb-3">
                    <label  for="vipId" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">????????????:</label>
                        <div class="col-sm-7 col-7">
                            <input type="text" name="vipId" class="form-control"  id="vipId" placeholder="?????????????????????">
                        </div>
                        <div class="col-sm-2 col-2">
                            <span id="vipIdError" style="color:red;font-size:3px;"></span>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label  for="vipName" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">????????????</label>
                        <div class="col-sm-7 col-7">
                        <input type="text" name="vipName" class=" form-control" id="vipName"  placeholder="?????????????????????"></div>
                        <div class="col-sm-2 col-2">
                            <span id="vipNameError" style="color:red;font-size:3px;"></span>
                        </div>
                    </div>
                    <div class="row mb-3">
                    <label for="vipNumber"class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:35px;">???????????????</label>
                        <div class="col-sm-7 col-7">
                            <input type="text" name="vipNumber" class=" form-control" id="vipNumber" placeholder="?????????????????????"></div>  <div class="col-sm-2 col-2">
                        <span id="vipNumberError" style="color:red;font-size:3px;"></span>
                    </div></div>
                        <div class="row mb-3">

                    <label  for="vipGender" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">??????:</label><div class="col-sm-7 col-7">
                    <select name="vipGender" id="vipGender" class="dropdown-toggle form-control" id="vipGender" >
                        <option value="???">???</option>
                        <option value="???">???</option>
                    </select></div></div>
                            <div class="row mb-3">
                    <label  for="vipState"class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">????????????</label><div class="col-sm-7 col-7">
                    <select name="vipState" id="vipState" class=" form-control" >
                        <option value="??????" selected="selected">??????</option>
                        <option value="??????">??????</option>
                        <option value="??????">??????</option>
                    </select></div></div>
                                <div class="row mb-3">
                    <label class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;" for="vipBalance">?????????</label>
                                    <div class="col-sm-7 col-7">
                                    <input type="text" name="vipBalance"  class=" form-control" id="vipBalance"  placeholder="?????????????????????"></div>
                                    <div class="col-sm-2 col-2">
                                        <span id="vipBalanceError" style="color:red;font-size:2px;"></span>
                                    </div>
                                </div>

                    <div class="row mb-3">
                    <label  for="vipGrade" class="col-sm-2 col-form-label col-2" style="font-size:26px;padding-left:40px;">?????????</label><div class="col-sm-7 col-7">
                    <select name="vipGrade" id="vipGrade"  class=" form-control" >
                    <option value="?????????" selected="selected">?????????</option>
                    <option value="?????????">?????????</option>
                    <option value="????????????">????????????</option>
                    </select></div></div>
                    <br><br>
                    <%--        ?????????name?????????????????????????????????????????????????????????Mapper???????????????--%>
                    <input type="submit" value="??????" class="btn btn-primary" style="width:400px;margin-right: 50px;">
                    <input type="reset" value="??????" class="btn btn-primary" style="width:400px;">
                </form>

            </div>
        </div>
    </div>
    <!-- /Page Wrapper --></div>
<script src="${pageContext.request.contextPath}/static/js/addvip.js">
<!-- /Main Wrapper --><!-- jQuery --><script src="https://www.jq22.com/jquery/jquery-3.3.1.js"></script><!-- Bootstrap Core JS --><script src="${pageContext.request.contextPath}/static/js/popper.min.js"></script><script src="${pageContext.request.contextPath}/static/plugins/bootstrap/js/bootstrap.min.js"></script><!-- Slimscroll JS --><script src="${pageContext.request.contextPath}/static/plugins/slimscroll/jquery.slimscroll.min.js"></script><!-- Custom JS --><script src="${pageContext.request.contextPath}/static/js/script.js"></script>
</body>
</html>