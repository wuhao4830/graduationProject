<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=utf-8" %>
<%
	String path = request.getContextPath();
%>
<html lang="en">
	<head>
		<title>毕业论文管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="../css/uniform.css" />
		<link rel="stylesheet" href="../css/select2.css" />
		<link rel="stylesheet" href="../css/unicorn.main.css" />
		<link rel="stylesheet" href="../css/unicorn.grey.css" class="skin-color" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body >

	<div id="header">
		<h1><a href="./dashboard.html">我的桌面</a></h1>
	</div>
	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav btn-group">
			<li class="btn btn-inverse"><a title="" href="teacherAction_info"><i class="icon icon-user"></i> <span class="text">个人信息</span></a></li>
			<li class="btn btn-inverse"><a title="" href="teacherAction_change"><i class="icon icon-user"></i> <span class="text">密码修改</span></a></li>
			<li class="btn btn-inverse dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">邮箱</span><b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a class="sAdd" title="" href="#">发送信息</a></li>
					<li><a class="sInbox" title="" href="#">收件箱</a></li>
					<li><a class="sOutbox" title="" href="#">已发出信息</a></li>
				</ul>
			</li>
			<li class="btn btn-inverse"><a title="" href="userAction_logout"><i class="icon icon-share-alt"></i> <span class="text">退出登录</span></a></li>
		</ul>
	</div>

	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i> 我的桌面</a>
		<ul>
			<li class="active"><a href="teacherAction_home"><i class="icon icon-home"></i> <span>我的桌面</span></a></li>
			<li class="submenu">
				<a href="#"><i class="icon icon-th-list"></i> <span>论文管理</span> <span class="label">3</span></a>
				<ul>
					<li><a href="teacherAction_add">论文录入</a></li>
					<li><a href="teacherAction_updateTopic">论文修改</a></li>
					<li><a href="teacherAction_studentTopic">给学生选题</a></li>
				</ul>
			</li>
			<li class="submenu">
				<a href="#"><i class="icon icon-file"></i> <span>论文过程管理</span> <span class="label">6</span></a>
				<ul>
					<li><a href="teacherAction_process">学生进度查看</a></li>
					<li><a href="teacherAction_begin">审核学生开题计划</a></li>
					<li><a href="teacherAction_beginRead">查看学生开题计划</a></li>
					<li><a href="teacherAction_mid">审核学生中期计划</a></li>
					<li><a href="teacherAction_midRead">查看学生中期计划</a></li>
					<li><a href="teacherAction_topFinal">审核学生终稿</a></li>
				</ul>
			</li>
			<li>
				<a href="teacherAction_message"><i class="icon icon-signal"></i> <span>查看通知与下载</span></a>
			</li>
		</ul>

	</div>

		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Style:</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div>
	<div id="content">
			<div id="content-header">
				<h1>论文修改</h1>

			</div>
			<div id="breadcrumb">
				<a href="teacherAction_home" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">论文修改</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
							</div>
							<div class="widget-content nopadding">
								<form class="form-horizontal" method="post" action="topicAction_update" name="basic_validate" id="basic_validate" novalidate="novalidate" >
                                    <input type="hidden" name="topic.topic_id" id="topic_id">
									<div class="control-group">
                                        <label class="control-label">论文题目</label>
                                        <div class="controls">
                                            <input type="text" name="topic.name" id="name"/>
                                        </div>
                                    </div>
									<div class="control-group">
										<label class="control-label">题目类别</label>
										<div class="controls">
											<label><input type="radio" id="thesis" name="topic.type" value="论文" /> 论文</label>
											<label><input type="radio" id="other" name="topic.type" value="其他" checked="checked"/> 其他</label>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">题目性质</label>
										<div class="controls">
											<select name="topic.physical" id="physical">
												<option  value="科学研究类">科学研究类</option>
												<option  value="企事业需求类">企事业需求类</option>
											</select>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">是否实验类</label>
										<div class="controls">
											<label><input type="radio" id="isTrialTrue" name="topic.isTrial" value="是"  /> 是</label>
											<label><input type="radio" id="isTrialFalse"name="topic.isTrial" value="否" checked="checked"/> 否</label>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">是否应用类</label>
										<div class="controls">
											<label><input type="radio" id="isAnswerTrue" name="topic.isAnswer" value="是" /> 是</label>
											<label><input type="radio" id="isAnswerFalse" name="topic.isAnswer" value="否" checked="checked"/> 否</label>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">是否导师在研项目</label>
										<div class="controls">
											<label><input type="radio"  id="isTutorWorkTrue" name="topic.isTutorWork" value="是" checked="checked"/> 是</label>
											<label><input type="radio" 	id="isTutorWorkFalse" name="topic.isTutorWork" value="否"/> 否</label>
										</div>
									</div>

                                    <div class="form-actions">
                                        <input type="submit" value="修改" class="btn btn-primary" />
                                    </div>
                                </form>
							</div>
						</div>			
					</div>
				</div>

				<div class="row-fluid">
					<div id="footer" class="span12">
						2016 &copy; Graduation Thesis Management System. Brought to you by Wuhao
					</div>
				</div>
			</div>
		</div>

	<script src="../js/jquery.min.js"></script>
	<script src="../js/jquery.ui.custom.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.uniform.js"></script>
	<script src="../js/select2.min.js"></script>
	<script src="../js/jquery.validate.js"></script>
	<script src="../js/unicorn.js"></script>
	<script src="../js/unicorn.form_validation.js"></script>
	<script src="../js/topicChange.js"></script>
	<script type="text/javascript">
			　
		window.onload =onloadVal;//不要括号

	</script>
	</body>
</html>
