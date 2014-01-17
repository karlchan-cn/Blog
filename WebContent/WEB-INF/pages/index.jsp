<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<title>这儿 &middot; 首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- 导入通用的css ico --><%@ include file="header.jsp"%>
<style type="text/css">
.bs-sidebar.affix {
	position: static;
}

.bs-sidenav { /**background-color: #F7F5FA;
	border-radius: 5px;**/
	font-size: 14px;
	margin-bottom: 30px;
	margin-top: 30px;
	padding-bottom: 10px;
	padding-top: 10px;
	text-shadow: 0 1px 0 #FFFFFF;
	margin-bottom: 30px;
}

.bs-sidebar .nav>li>a {
	color: #716B7A;
	display: block;
	padding: 5px 20px;
}

.bs-sidebar .nav>li>a:hover,.bs-sidebar .nav>li>a:focus {
	background-color: #E5E3E9;
	border-right: 1px solid #DBD8E0;
	text-decoration: none;
}

.bs-sidebar .nav>.active>a,.bs-sidebar .nav>.active:hover>a,.bs-sidebar .nav>.active:focus>a
	{
	background-color: rgba(0, 0, 0, 0);
	border-right: 1px solid #563D7C;
	color: #563D7C;
	font-weight: bold;
}

.bs-sidebar .nav .nav {
	display: none;
	margin-bottom: 8px;
}

.bs-sidebar .nav .nav>li>a {
	font-size: 90%;
	padding-bottom: 3px;
	padding-left: 30px;
	padding-top: 3px;
}

@media ( min-width : 992px) {
	.bs-sidebar .nav>.active>ul {
		display: block;
	}
	.bs-sidebar.affix,.bs-sidebar.affix-bottom {
		width: 213px;
	}
	.bs-sidebar.affix { /**position: fixed; **/
		top: 80px;
	}
	.bs-sidebar.affix-bottom {
		position: absolute;
	}
	.bs-sidebar.affix-bottom .bs-sidenav,.bs-sidebar.affix .bs-sidenav {
		margin-bottom: 0;
		margin-top: 0;
	}
}

@media ( min-width : 1200px) {
	.bs-sidebar.affix-bottom,.bs-sidebar.affix {
		width: 263px;
	}
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-example">
	<!-- 导入navhead --><%@ include file="navhead.jsp"%>
	<div class="container" id="content">
		<div class="row">
			<div class="col-md-2  ">
				<ul class="nav nav-pills nav-stacked">

					<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">日记<span
							class="caret pull-right"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">所有日记</a></li>
							<li><a href="#">写文章</a></li>
							<li><a href="#">分类目录</a></li>
							<li><a href="#">标签</a></li>
						</ul></li>
					<li class=""><a class="dropdown-toggle" data-toggle="dropdown"
						href="#">多媒体<span class="caret pull-right"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">媒体库</a></li>
							<li><a href="#">添加</a></li>

						</ul></li>
					<li><a href="#">设置</a></li>
				</ul>
			</div>
			<div class="col-md-9" role="main"></div>
		</div>
	</div>
	<!-- /container -->
</body>
<!-- 导入通用js  -->
<%@ include file="footer.jsp"%>
<script type="text/javascript">
	$('#dropdown').popover({
		content : "<ul class=''><li>menu 1</li>	<li>menu 2</li></ul>"
	});
</script>
</html>
