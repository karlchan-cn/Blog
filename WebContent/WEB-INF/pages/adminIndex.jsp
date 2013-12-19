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
	font-size: 13px;
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
	.bs-sidebar.affix {
		position: fixed;
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
			<div class="col-md-3">
				<div role="complementary"
					class="bs-sidebar hidden-print affix navbar-example">
					<ul class="nav bs-sidenav">
						<li><a href="#overview">日记</a>
							<ul class="nav">
								<li><a href="#overview-doctype">新增日记</a></li>
								<li><a href="#overview-mobile">管理日记</a></li>
							</ul></li>
						<li><a href="#setting">设置</a>
							<ul class="nav">
								<li><a href="#user-setting">用户管理</a></li>
								<li><a href="#blog-setting">博客管理</a></li>
							</ul></li>
					</ul>
				</div>
			</div>

			<div class="col-md-9" role="main">

				<h3 id="overview">overview</h3>

				<p>DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:124) - Mapping
					[/assets/js/jquery.json-2.4.js] to HandlerExecutionChain with
					handler
					[org.springframework.web.servlet.resource.ResourceHttpRequestHandler@5303a7a]
					and 1 interceptor DEBUG [http-bio-8081-exec-9]
					(DispatcherServlet.java:902) - Last-Modified value for
					[/Blog/assets/js/jquery.json-2.4.js] is: -1 DEBUG
					[http-bio-8081-exec-9] (ResourceHttpRequestHandler.java:161) -
					Trying relative path [jquery.json-2.4.js] against base location:
					ServletContext resource [/WEB-INF/assets/js/] DEBUG
					[http-bio-8081-exec-9] (ResourceHttpRequestHandler.java:161) -
					Trying relative path [jquery.json-2.4.js] against base location:
					ServletContext resource [/WEB-INF/assets/js/bootstrap/] DEBUG
					[http-bio-8081-exec-9] (ResourceHttpRequestHandler.java:161) -
					Trying relative path [jquery.json-2.4.js] against base location:
					ServletContext resource [/WEB-INF/assets/js/jquery/] DEBUG
					[http-bio-8081-exec-9] (ResourceHttpRequestHandler.java:166) -
					Found matching resource: ServletContext resource
					[/WEB-INF/assets/js/jquery/jquery.json-2.4.js] DEBUG
					[http-bio-8081-exec-9] (ResourceHttpRequestHandler.java:120) -
					Determined media type 'application/javascript' for ServletContext
					resource [/WEB-INF/assets/js/jquery/jquery.json-2.4.js] DEBUG
					[http-bio-8081-exec-9] (ResourceHttpRequestHandler.java:131) -
					Resource not modified - returning 304 DEBUG [http-bio-8081-exec-9]
					(DispatcherServlet.java:957) - Null ModelAndView returned to
					DispatcherServlet with name 'spring': assuming HandlerAdapter</p>

				<h3 id="overview-doctype">overview-doctype</h3>

				<p>DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:124) - Mapping
					[/assets/js/jquery.json-2.4.js] to HandlerExecutionChain with</p>

				<h3 id="overview-mobile">overview-mobile</h3>

				<p>DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:124) - Mapping
					[/assets/js/jquery.json-2.4.js] to HandlerExecutionChain with
					handler
					[org.springframework.web.servlet.resource.ResourceHttpRequestHandler@5303a7a]
					and 1 interceptor DEBUG [http-bio-8081-exec-9]
					(DispatcherServlet.java:902) - Last-Modified value for
					[/Blog/assets/js/jquery.json-2.4.js] is: -1 DEBUG
					[http-bio-8081-exec-9] (ResourceHttpRequestHandler.java:161) -

					completed request</p>

				<h3 id="setting">setting</h3>

				<p>DEBUG [http-bio-8081-exec-9] 081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]</p>

				<h3 id="user-setting">user-setting</h3>

				<p>DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9](AbstractUrlHandlerMapping.java:169)
					- Matching patterns for request [/assets/js/jquery.json-2.4.js] are
					[/assets/js/**] DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:193) - URI Template variables for
					request [/assets/js/jquery.json-2.4.js] are {} DEBUG
					[http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9(AbstractUrlHandlerMapping.java:169)
					- Matching patterns for request [/assets/js/jquery.json-2.4.js] are
					[/assets/js/**] DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:193) - URI Template variables for
					request [/assets/js/jquery.json-2.4.js] are {} DEBUG
					[http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9(AbstractUrlHandlerMapping.java:169)
					- Matching patterns for request [/assets/js/jquery.json-2.4.js] are
					[/assets/js/**] DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:193) - URI Template variables for
					request [/assets/js/jquery.json-2.4.js] are {} DEBUG
					[http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9(AbstractUrlHandlerMapping.java:169)
					- Matching patterns for request [/assets/js/jquery.json-2.4.js] are
					[/assets/js/**] DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:193) - URI Template variables for
					request [/assets/js/jquery.json-2.4.js] are {} DEBUG
					[http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9(AbstractUrlHandlerMapping.java:169)
					- Matching patterns for request [/assets/js/jquery.json-2.4.js] are
					[/assets/js/**] DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:193) - URI Template variables for
					request [/assets/js/jquery.json-2.4.js] are {} DEBUG
					[http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9</p>


				<h3 id="blog-setting">blog-setting</h3>

				<p>DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]overview-mobile
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]
					(AbstractUrlHandlerMapping.java:169) - Matching patterns for
					request [/assets/js/jquery.json-2.4.js] are [/assets/js/**] DEBUG
					[http-bio-8081-exec-9] (AbstractUrlHandlerMapping.java:193) - URI
					Template variables for request [/assets/js/jquery.json-2.4.js] are
					{} DEBUG [http-bio-8081-exec-9]</p>

			</div>

		</div>
	</div>
	<!-- /container -->
</body>
<!-- 导入通用js  -->
<%@ include file="footer.jsp"%>
</html>
