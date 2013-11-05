<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
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
	font-size: 12px;
	display: inline;
	position: relative;
	top: 10px;
}

.form-horizontal .text-error {
	color: #FE2617;
	line-height: 19.2px;
	font-size: 12px;
}

.form-horizontal #changeimagebtn {
	
}

.form-horizontal .mutedlabel {
	font-size: 12px;
	color: #666666;
	line-height: 19.2px;
	font-size-adjust: none;
}

a:hover {
	background: none repeat scroll 0 0 #3377AA;
	color: #FFFFFF;
	text-decoration: none;
}
</style>
</head>
<body>
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
						<label class="control-label muted mutedlabel" for="securitycode">请输入上图中的字母</label>
						<div class="controls">
							<input type="text" id="securitycode" name="securitycode"
								class="input-small">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<label class="checkbox muted mutedlabel"> <input
								type="checkbox"> 记住我
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
					var securitycodeimg = $('#securitycodeimg');
					securitycodeimg.attr({
						src : "/Blog/user/securitycode?" + new Date().getTime()
					});
					return false;
				});
				$('#signinform').validate({
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
					messages : {
						j_username : {
							required : "请输入用户名"
						},
						j_password : {
							required : "请输入密码"
						},
						securitycode : {
							required : "请输入验证码 "
						}
					},
					errorElement : "span",
					errorClass : "help-inline text-error"
				/**
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
											"<span class='help-inline error'>"
													+ error.message
													+ "</span>");
						} else {
							messageLabel
									.text(error.message);
						}
					}
				}**/
				});
			}
		};
		win.pageController = controller;
		controller.init();

	});
</script>

</html>
