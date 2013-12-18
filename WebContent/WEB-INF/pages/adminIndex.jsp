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
</style>
</head>
<body data-spy="scroll" data-target=".navbar-example">
	<!-- 导入navhead --><%@ include file="navhead.jsp"%>
	<div class="container" id="content">
		<div class="row">
			<div class="col-md-3">
				<div role="complementary"
					class="bs-sidebar hidden-print affix navbar-example">
					<ul class="nav bs-sidenav">
						<li><a href="#overview">日记</a>
							<ul class="nav">
								<li><a href="#overview-doctype">新增日记</a></li>
								<li><a href="#overview-mobile">管理日记</a></li>

							</ul></li>
					</ul>
				</div>
			</div>

			<div class="col-md-9" role="main">
				<div id="overview">overview</div>
				<div id="overview-doctype">overview-doctype</div>
				<div id="overview-mobile">overview-mobile</div>
			</div>

		</div>
	</div>
	<!-- /container -->
</body>
<!-- 导入通用js  -->
<%@ include file="footer.jsp"%>
</html>
