<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>登陆 &middot;Blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- 导入通用的css ico --><%@ include file="header.jsp"%>
<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<form action=""></form>
	</div>
	<!-- 导入navhead --><%@ include file="navhead.jsp"%>
	<div class="container">
		<!-- 
		<form class="form-signin" action="/Blog/j_spring_security_check"
			method="POST">
			<h4 class="form-signin-heading lead muted">请登陆</h4>
			<input type="text" name="j_username" class="input-block-level"
				placeholder="用户名"><input type="password" name="j_password"
				class="input-block-level" placeholder="密码"> <img
				src="/Blog/user/securitycode"> <input type="password"
				name="j_password" class="input-block-level" placeholder="请输入上图中的字母">
			<label class="checkbox"> <input type="checkbox"
				value="remember-me">记住我
			</label>
			<button class="btn btn-normal btn-primary" type="submit">登陆
			</button>
		</form>
		 -->
		<form class="form-signin form-horizontal"
			action="/Blog/j_spring_security_check" id="signinform" method="POST">
			<h2 class="form-signin-heading">请登陆</h2>
			<div class="control-group">
				<label class="controls text-error" for="errormsg">
					${requestScope.SPRING_SECURITY_LAST_EXCEPTION} <!-- ${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message} -->
				</label>
			</div>
			<div class="control-group">
				<label class="control-label input-small" for="j_username">用户名</label>
				<div class="controls">
					<input type="text" name="j_username" id="j_username"
						class="input-small">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="j_password">密码</label>
				<div class="controls">
					<input type="password" id="j_password" name="j_password"
						class="input-small">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label input-small"><img
					src="/Blog/user/securitycode"></label>
				<div class="controls"></div>
			</div>
			<div class="control-group">
				<label class="control-label muted input-small" for="securitycode">请输入上图中的字母</label>
				<div class="controls">
					<input type="text" id="securitycode" name="securitycode"
						class="input-small">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<label class="checkbox"> <input type="checkbox">
						记住我
					</label>
					<button type="submit" class="btn">登陆</button>
				</div>
			</div>
		</form>
	</div>
</body>

<!-- 导入通用js  -->
<%@ include file="footer.jsp"%>
<script type="text/javascript">
	$(function() {
		var win = window, controller;
		controller = {
			j_username : $('#j_username'),
			j_password : $('#j_password'),
			securitycode : $('#securitycode'),
			init : function() {
				$('#signinform').submit(this.checkform());
			},
			//check form inpurt elements			
			checkform : function() {
				var that = this;

				return false;
			}
		};
		win.pageController = controller;
		controller.init();

	});
</script>
</html>
