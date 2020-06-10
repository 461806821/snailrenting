<%--
  Created by IntelliJ IDEA.
  User: alien
  Date: 2020/3/19 0019
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>蜗牛房屋后台管理系统</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="/static/snailAdmin/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="/static/snailAdmin/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="/static/snailAdmin/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="/static/snailAdmin/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="/static/snailAdmin/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="/static/snailAdmin/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div class="page">
    <!-- Nav Area Start-->
    <%@ include file="Admin_nav.jsp"%>
    <!-- Nav Area End-->
        <div class="content-inner">
            <!-- Page Header-->
            <header class="page-header">
                <div class="container-fluid">
                    <h2 class="no-margin-bottom">房源管理</h2>
                </div>
            </header>
            <!-- Breadcrumb-->
            <div class="breadcrumb-holder container-fluid">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath }/admin/Admin_index">主页 </a></li>
                    <li class="breadcrumb-item active">添加房源            </li>
                </ul>
            </div>
            <!-- Dashboard Counts Section-->
            <section class="tables">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-close">
                                    <div class="dropdown">
                                        <button type="button" id="closeCard5" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="dropdown-toggle"><i class="fa fa-ellipsis-v"></i></button>
                                        <div aria-labelledby="closeCard5" class="dropdown-menu dropdown-menu-right has-shadow"><a href="#" class="dropdown-item remove"> <i class="fa fa-times"></i>Close</a><a href="#" class="dropdown-item edit"> <i class="fa fa-gear"></i>Edit</a></div>
                                    </div>
                                </div>
                                <div class="card-header d-flex align-items-center">
                                    <h3 class="h4">添加房源</h3>
                                </div>
                                <div class="card-body">
                                    <c:if test="${!empty msg}">
                                        <c:choose>
                                            <c:when test="${success == true}">
                                                <div class="alert alert-info" role="alert">
                                                    <strong>操作提示：</strong>${msg}
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <div class="alert alert-danger" role="alert">
                                                    <strong>操作警告：</strong>${msg}
                                                </div>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:if>
                                    <form form="country1 country2" class="form-horizontal" action="${pageContext.request.contextPath }/house/Admin_insert" method="post" enctype="multipart/form-data">
                                        <div class="form-group row has-danger">
                                            <label class="col-sm-3 form-control-label">名称</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="house_name" required="required" class="form-control is-invalid">
                                                <div class="invalid-feedback">请输入房源名称。</div>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">房主ID</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="userId" class="form-control"><small class="help-block-none">请输入数字。</small>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">租房类型</label>
                                            <div class="col-sm-9">
                                                <select id="country1" name="type" class="form-control mb-3">
                                                    <option value="null">请选择</option>
                                                    <option value="1">合租</option>
                                                    <option value="2">整租</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">地址</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="address" class="form-control"><small class="help-block-none">请具体到门牌号。</small>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">价钱/月</label>
                                            <div class="col-sm-9">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <input type="text" name="house_price" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label for="house_img" class="col-sm-3 form-control-label">房源图片</label>
                                            <div class="col-sm-9">
                                                <input id="house_img" type="file" name="house_img" class="form-control-file">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">卧室数</label>
                                            <div class="col-sm-9">
                                                <select id="country2" name="bedroom" class="form-control mb-3">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </div>
                                        </div>
<%--                                        <div class="line"></div>--%>
<%--                                        <div class="form-group row">--%>
<%--                                            <label class="col-sm-3 form-control-label">卧室间数</label>--%>
<%--                                            <div class="col-sm-9">--%>
<%--                                                <input type="text" name="bedroom" oninput = "value=value.replace(/[^\d]/g,'')" class="form-control"><small class="help-block-none">请输入数字。</small>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">卧室信息</label>
                                            <div class="col-sm-9">
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <button type="button" data-toggle="modal" data-target="#myModal1" class="btn btn-primary">添加房间-1</button>&nbsp;
                                                        <button type="button" data-toggle="modal" data-target="#myModal2" class="btn btn-primary">添加房间-2</button>&nbsp;
                                                        <button type="button" data-toggle="modal" data-target="#myModal3" class="btn btn-primary">添加房间-3</button>&nbsp;
                                                        <button type="button" data-toggle="modal" data-target="#myModal4" class="btn btn-primary">添加房间-4</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">客厅数</label>
                                            <div class="col-sm-9">
                                                <input type="text"name="living" oninput = "value=value.replace(/[^\d]/g,'')" class="form-control"><small class="help-block-none">请输入数字。</small>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label for="living_img1" class="col-sm-3 form-control-label">客厅图片</label>
                                            <div class="col-sm-9">
                                                <input id="living_img1" type="file" name="living_img1" class="form-control-file">
                                                <input id="living_img2" type="file" name="living_img2" class="form-control-file">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">厨房数</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="kitchen" oninput = "value=value.replace(/[^\d]/g,'')" class="form-control"><small class="help-block-none">请输入数字。</small>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label for="kitchen_img1" class="col-sm-3 form-control-label">厨房图片</label>
                                            <div class="col-sm-9">
                                                <input id="kitchen_img1" type="file" name="kitchen_img1" class="form-control-file">
                                                <input id="kitchen_img2" type="file" name="kitchen_img2" class="form-control-file">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">浴室数</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="bath" oninput = "value=value.replace(/[^\d]/g,'')" class="form-control"><small class="help-block-none">请输入数字。</small>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label for="bath_img1" class="col-sm-3 form-control-label">浴室图片</label>
                                            <div class="col-sm-9">
                                                <input id="bath_img1" type="file" name="bath_img1" class="form-control-file">
                                                <input id="bath_img2" type="file" name="bath_img2" class="form-control-file">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="bath_img1" class="col-sm-3 form-control-label">VR图片</label>
                                            <div class="col-sm-9">
                                                <input id="vr_img1" type="file" name="vr_img1" class="form-control-file">
                                                <input id="vr_img2" type="file" name="vr_img2" class="form-control-file">
                                                <input id="vr_img3" type="file" name="vr_img3" class="form-control-file">
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <label class="col-sm-3 form-control-label">截止日期</label>
                                            <div class="col-sm-9">
                                                <input type="date" name="validTime" class="form-control"><small class="help-block-none">请填写房源预计的截止日期，不可以修改。</small>
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row has-success">
                                            <label class="col-sm-3 form-control-label">描述</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="house_desp" class="form-control is-valid">
                                            </div>
                                        </div>
                                        <div class="line"></div>
                                        <div class="form-group row">
                                            <div class="col-sm-4 offset-sm-3">
                                                <button type="button" onclick="window.location.href='${pageContext.request.contextPath }/house/Admin_list?pageSize=6'" class="btn btn-secondary">取消</button>
                                                <button type="submit" class="btn btn-primary">保存信息</button>
                                            </div>
                                        </div>

                                        <!-- Modal1-->
                                        <div id="myModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" class="modal fade text-left" style="display: none;" aria-hidden="true">
                                            <div role="document" class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 id="exampleModalLabel" class="modal-title">填写房间-1信息</h4>
                                                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>请正确填写房间-1的信息。</p>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">名称</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="1room_name" required="required" class="form-control is-invalid">
                                                                <div class="invalid-feedback">请输入房间-1名称。</div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">价钱/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="1room_price" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">折扣价/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="1sale" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label for="bedroom_img1" class="col-sm-3 form-control-label">卧室图片</label>
                                                            <div class="col-sm-9">
                                                                <input id="bedroom_img1" type="file" name="1bedroom_img1" class="form-control-file">
                                                                <input id="bedroom_img2" type="file" name="1bedroom_img2" class="form-control-file">
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row has-success">
                                                            <label class="col-sm-3 form-control-label">卧室描述</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="1room_desp" class="form-control is-valid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" data-dismiss="modal" class="btn btn-secondary">取消</button>
                                                        <button type="button" data-dismiss="modal" class="btn btn-primary">保存</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Moda1l End-->
                                        <!-- Modal1-->
                                        <div id="myModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" class="modal fade text-left" style="display: none;" aria-hidden="true">
                                            <div role="document" class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 id="exampleModalLabel2" class="modal-title">填写房间-1信息</h4>
                                                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>请正确填写房间-1的信息。</p>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">名称</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="2room_name" required="required" class="form-control is-invalid">
                                                                <div class="invalid-feedback">请输入房间-1名称。</div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">价钱/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="2room_price" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">折扣价/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="2sale" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label for="bedroom_img1" class="col-sm-3 form-control-label">卧室图片</label>
                                                            <div class="col-sm-9">
                                                                <input id="2bedroom_img1" type="file" name="2bedroom_img1" class="form-control-file">
                                                                <input id="2bedroom_img2" type="file" name="2bedroom_img2" class="form-control-file">
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row has-success">
                                                            <label class="col-sm-3 form-control-label">卧室描述</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="2room_desp" class="form-control is-valid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" data-dismiss="modal" class="btn btn-secondary">取消</button>
                                                        <button type="button" data-dismiss="modal" class="btn btn-primary">保存</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Modal2 End-->
                                        <!-- Modal3-->
                                        <div id="myModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" class="modal fade text-left" style="display: none;" aria-hidden="true">
                                            <div role="document" class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 id="exampleModalLabel3" class="modal-title">填写房间-3信息</h4>
                                                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>请正确填写房间-3的信息。</p>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">名称</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="3room_name" class="form-control is-invalid">
                                                                <div class="invalid-feedback">请输入房间-3名称。</div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">价钱/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="3room_price" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">折扣价/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="3sale" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label for="bedroom_img1" class="col-sm-3 form-control-label">卧室图片</label>
                                                            <div class="col-sm-9">
                                                                <input id="3bedroom_img1" type="file" name="3bedroom_img1" class="form-control-file">
                                                                <input id="3bedroom_img2" type="file" name="3bedroom_img2" class="form-control-file">
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row has-success">
                                                            <label class="col-sm-3 form-control-label">卧室描述</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="3room_desp" class="form-control is-valid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" data-dismiss="modal" class="btn btn-secondary">取消</button>
                                                        <button type="button" data-dismiss="modal" class="btn btn-primary">保存</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Modal3 End-->
                                        <!-- Modal4-->
                                        <div id="myModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" class="modal fade text-left" style="display: none;" aria-hidden="true">
                                            <div role="document" class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 id="exampleModalLabe4" class="modal-title">填写房间-4信息</h4>
                                                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <p>请正确填写房间-4的信息。</p>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">名称</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="4room_name" class="form-control is-invalid">
                                                                <div class="invalid-feedback">请输入房间-4的名称。</div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">价钱/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="4room_price" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label class="col-sm-3 form-control-label">折扣价/月</label>
                                                            <div class="col-sm-9">
                                                                <div class="form-group">
                                                                    <div class="input-group">
                                                                        <input type="text" name="4sale" oninput = "value=value.replace(/[^\d]/g,'')" placeholder="" class="form-control">
                                                                        <div class="input-group-append"><span class="input-group-text">.00</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row">
                                                            <label for="bedroom_img1" class="col-sm-3 form-control-label">卧室图片</label>
                                                            <div class="col-sm-9">
                                                                <input id="4bedroom_img1" type="file" name="4bedroom_img1" class="form-control-file">
                                                                <input id="4bedroom_img2" type="file" name="4bedroom_img2" class="form-control-file">
                                                            </div>
                                                        </div>
                                                        <div class="line"></div>
                                                        <div class="form-group row has-success">
                                                            <label class="col-sm-3 form-control-label">卧室描述</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" name="4room_desp" class="form-control is-valid">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" data-dismiss="modal" class="btn btn-secondary">取消</button>
                                                        <button type="button" data-dismiss="modal" class="btn btn-primary">保存</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Modal4 End-->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Footer Area Start-->
            <%@ include file="Admin_footer.jsp"%>
            <!-- Footer Area End-->
        </div>
    </div>
</div>
<!-- JavaScript files-->
<script src="/static/snailAdmin/vendor/jquery/jquery.min.js"></script>
<script src="/static/snailAdmin/vendor/popper.js/umd/popper.min.js"> </script>
<script src="/static/snailAdmin/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/snailAdmin/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="/static/snailAdmin/vendor/chart.js/Chart.min.js"></script>
<script src="/static/snailAdmin/vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="/static/snailAdmin/js/charts-home.js"></script>
<!-- Main File-->
<script src="/static/snailAdmin/js/front.js"></script>
</body>
</html>