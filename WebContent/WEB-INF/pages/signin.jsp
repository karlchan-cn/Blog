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
.form-horizontal .control-group {
	margin-bottom: 10px;
}

.form-horizontal .control-group .controls img {
	height: 40px;
}

.form-horizontal .control-group .changeimage {
	font-size: 8px;
	display: inline;
	position: relative;
	top: 10px;
}
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

		<div class="row">
			<div class="span6">
				<form class="form-signin form-horizontal"
					action="/Blog/j_spring_security_check" id="signinform"
					method="POST">
					<div class="control-group">
						<h2 class=" control-label">请登陆</h2>
					</div>
					<div class="control-group">
						<div class="controls">
							<label class="text-error" for="errormsg">
								${requestScope.SPRING_SECURITY_LAST_EXCEPTION} </label>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="j_username">用户名</label>
						<div class="controls">
							<input type="text" name="j_username" id="j_username" class="" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="j_password">密码</label>
						<div class="controls">
							<input type="password" id="j_password" name="j_password" class="" />
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<img src="/Blog/user/securitycode" id="securitycodeimg">
							<p class="muted changeimage">
								看不清？<a href="" id="changeimagebtn">换一个</a>
							</p>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label muted " for="securitycode">请输入上图中的字母</label>
						<div class="controls">
							<input type="text" id="securitycode" name="securitycode"
								class="input-small">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<label class="checkbox muted"> <input type="checkbox">
								记住我
							</label>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn">登陆</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

<!-- 导入通用js  -->
<%@ include file="footer.jsp"%>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/additional-methods.js"></script>
<script type="text/javascript">
	$(function() {
		var win = window, controller;
		controller = {
			j_username : $('#j_username'),
			j_password : $('#j_password'),
			securitycode : $('#securitycode'),
			init : function() {
				//$('#signinform').submit(this.checkform());
				$('#changeimagebtn').click(function() {
					$('#securitycodeimg').attr({
						src : "/Blog/user/securitycode"
					});
					return false;
				});
				$('#signinform')
						.validate(
								{
									rules : {
										j_username : {
											required : true
										},
										j_password : {
											required : true
										},
										securitycode : {
											required : true
										}
									},
									onfocusout : true,
									showErrors : function(errorMap, errorList) {
										var errorCount = errorList.length, error, messageLabel;

										//"<span class='help-inline'>Inline help text</span>";
										while (errorCount--) {
											error = errorList[errorCount];
											messageLabel = $(error.element)
													.siblings(
															"[class='help-inline']");
											if (messageLabel.length == 0) {
												$(error.element)
														.parent()
														.append(
																"<span class='help-inline'>"
																		+ error.message
																		+ "</span>");
											} else {
												messageLabel
														.text(error.message);
											}
										}
									}
								});
			},
			//check form inpurt elements			
			checkform : function() {
				var that = this;
				//return false;
			}
		};
		win.pageController = controller;
		controller.init();

	});
</script>

</html>
