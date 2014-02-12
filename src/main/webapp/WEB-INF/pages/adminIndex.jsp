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

.sub-menu {
	display: none
}

.sub-menu li {
	text-indent: 35px
}

.postsbox-nav li a {
	padding-left: 0;
	padding-right: 0;
}
/**
**Uplad area CSS
**/
.upload-area {
	border: 4px dashed #BBBBBB;
	height: 200px;
}

.drag-over {
	border-color: #83B4D8;
}

.upload-area .drag-drop-inside {
	margin: 70px auto 0;
	width: 250px;
}

.upload-area .drag-drop-inside p,.drag-drop-inside p.drag-drop-buttons {
	display: block;
}

.drag-drop-inside p.drag-drop-info {
	font-size: 20px;
}

.upload-area .drag-drop-inside p {
	text-align: center;
}

.drag-drop-inside p {
	color: #AAAAAA;
	font-size: 14px;
	margin: 5px 0;
}

.upload-area .drag-drop-inside p {
	text-align: center;
}

.drag-drop-buttons input {
	cursor: pointer;
	direction: ltr;
	font-size: 20px;
	margin: 0;
	opacity: 0;
	position: absolute;
	right: 405px;
	top: 133px;
	width: 70px;
}

*:before,*:after {
	-moz-box-sizing: border-box;
}

*:before,*:after {
	-moz-box-sizing: border-box;
}

.nav-tabs>li>a {
	border: 1px solid rgba(0, 0, 0, 0);
	border-radius: 4px 4px 0 0;
	line-height: 1.42857;
	margin-right: 2px;
}

.nav>li>a {
	display: block;
	padding: 10px 15px;
	position: relative;
}

a {
	color: #428BCA;
	text-decoration: none;
}

a {
	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);
}

* {
	-moz-box-sizing: border-box;
}

.nav {
	list-style: none outside none;
}

body {
	color: #333333;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 1.42857;
}

html {
	font-size: 62.5%;
}

html {
	font-family: sans-serif;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar-example">
	<!-- 导入navhead --><%@ include file="navhead.jsp"%>
	<div class="container" id="content">
		<div class="row">
			<div class="col-md-3">
				<!-- 
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
				 -->
				<ul class="nav nav-pills nav-stacked" style="margin-top: 15px">
					<li><a href="#" class="pitem">日记</a>
						<ul class="nav nav-pills nav-stacked sub-menu">
							<li><a href="#">日记列表</a></li>
							<li><a href="#">新增日记</a></li>
							<li><a href="#">分类列表</a></li>
							<li><a href="#">标签列表</a></li>
						</ul></li>
					<li><a href="#" class="pitem">用户</a>
						<ul class="nav nav-pills nav-stacked sub-menu">
							<li><a href="#">用户列表</a></li>
							<li><a href="#">增加用户</a></li>
							<li><a href="#">我的资料</a></li>

						</ul></li>
					<li><a href="#" class="pitem">多媒体</a>
						<ul class="nav nav-pills nav-stacked sub-menu">
							<li><a href="#">媒体库</a></li>
							<li><a href="#">添加</a></li>

						</ul></li>
				</ul>

			</div>

			<div class="col-md-9" role="main">
				<div id="EntitiesRegion">
					<div class="row">
						<div class="col-md-6" role="main">
							<h2>
								文章<small><a href="#" class="btn  btn-sm">新增</a></small>
							</h2>
						</div>
					</div>
					<!-- <div class="row">
					<div class="col-md-5">
						<ul class="nav nav-justified postsbox-nav">
							<li class="active"><a href="#">所有日记</a></li>
							<li><a href="#">发表箱</a></li>
							<li><a href="#">草稿箱</a></li>
							<li><a href="#">垃圾箱</a></li>
						</ul>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-5">
						<div class="btn-group">
							<a href="#" class="btn btn-default">发表箱</a> <a href="#"
								class="btn btn-default">草稿箱</a> <a href="#"
								class="btn btn-default">垃圾箱</a>
						</div>
					</div>
				</div> 
				<div class="row">
					<div class="col-md-5">
						<div class="btn-toolbar" role="toolbar">
							<div class="btn-group">
								<a href="#" class="btn btn-default">全部<span>(12)</span></a>
							</div>
							<div class="btn-group">
								<a href="#" class="btn btn-default">已发布<span>(11)</span></a>
							</div>
							<div class="btn-group">
								<a href="#" class="btn btn-default">草稿<span>(1)</span></a>
							</div>
						</div>
					</div>
				</div>-->
					<div class="row">
						<div class="col-md-12">
							<ul id="entityTab" class="nav nav-tabs">
								<li><a href="" id="allEntities" class="">全部<span>(12)</span></a></li>
								<li class="active"><a id="releasedEntities" href=""
									class="">已发布<span>(11)</span></a></li>
								<li><a id="draftEntities" href="" class="">草稿<span>(1)</span></a></li>
							</ul>
						</div>
						<div class="col-md-12">
							<table class="table table-striped" id="EntitiesTable">
								<thead>
									<tr>
										<th>#</th>
										<th>名字</th>
										<th>姓氏</th>
										<th>用户名</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Karl</td>
										<td>Chen</td>
										<td>@karl</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- Entities Region -->
				<!-- 
				<div class="row">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#home" data-toggle="tab">Home</a></li>
						<li><a href="#profile" data-toggle="tab">Profile</a></li>
						<li><a href="#messages" data-toggle="tab">Messages</a></li>
						<li><a href="#settings" data-toggle="tab">Settings</a></li>
					</ul>

					
				<div class="tab-content">
					<div class="tab-pane active" id="home">...</div>
					<div class="tab-pane" id="profile">.profile</div>
					<div class="tab-pane" id="messages">.messages</div>
					<div class="tab-pane" id="settings">.settings</div>
				</div>
			</div>
			-->
				<div id="MediaRegion">
					<div class="row">
						<div class="col-md-6" role="main">
							<h2>
								媒体库<small><a href="#" class="btn  btn-sm">添加</a></small>
							</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<ul id="MediaTab" class="nav nav-tabs">
								<li><a href="" id="allEntities" class="">全部<span>(12)</span></a></li>
								<li class="active"><a id="releasedEntities" href=""
									class="">图像<span>(11)</span></a></li>
								<li><a id="draftEntities" href="" class="">未附加<span>(1)</span></a></li>
							</ul>
						</div>
						<div class="col-md-12">
							<table class="table table-striped" id="MediaTable">
								<thead>
									<tr>
										<th>#</th>
										<th>名字</th>
										<th>姓氏</th>
										<th>用户名</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Karl</td>
										<td>Chen</td>
										<td>@karl</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row" id="add-media-region">
						<div class="col-md-12">
							<h2>上传新媒体文件</h2>
							<br>
						</div>
						<div class="col-md-12">
							<div class="upload-area" id="upload-area">
								<div class="drag-drop-inside">
									<p class="drag-drop-info">将文件拖到这里</p>
									<p>或</p>
									<p class="drag-drop-buttons">
										<span class="btn btn-success btn-sm"> <span>选择文件</span>
											<input type="file" value="" id="plupload-browse-button"
											name="file" style="">
										</span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end of media region -->
			</div>
			<!-- end of main content  -->
		</div>
		<div class="row" id="mediaContent"></div>
	</div>
	<!-- /container -->
</body>
<!-- 导入通用js  -->
<%@ include file="footer.jsp"%>
<script src="/Blog/assets/js/jquery.ui.widget.js">
	
</script>
<script src="/Blog/assets/js/jquery.iframe-transport.js">
	
</script>
<script src="/Blog/assets/js/jquery.fileupload.js">
	
</script>
<script src="/Blog/assets/js/modernizr-2.7.1.js">
	
</script>
<script src="/Blog/assets/js/dropzone.js">
	
</script>

<script type="text/javascript">
	$(function() {
		var win = window, controller;
		//cumstomize DND hadler from stackoverflow 
		$.fn.dndhover = function(options) {
			return this.each(function() {
				var self = $(this);
				var collection = $();

				self.on('dragenter', function(event) {
					if (collection.size() === 0) {
						self.trigger('dndHoverStart');
					}
					collection = collection.add(event.target);
				});
				self.on('drop', function(event) {
					self.trigger('dndHoverEnd');
					event.stopPropagation();
					event.preventDefault();
					return false;

				});
				self.on('dragover', function(event) {
					event.stopPropagation();
					event.preventDefault();
					return false;

				});
				self.on('dragleave', function(event) {
					/*
					 * Firefox 3.6 fires the dragleave event on the previous element
					 * before firing dragenter on the next one so we introduce a delay
					 */
					setTimeout(function() {
						collection = collection.not(event.target);
						if (collection.size() === 0) {
							self.trigger('dndHoverEnd');
						}
					}, 1);
				});
			});
		};

		controller = {
			/**
			 **file update handler
			 **/
			fileUploadHandler : function(e) {
				if (Modernizr.draganddrop) {
					$('.upload-area').dropzone({
						url : "upload"
					});
					$('.upload-area').dndhover().on({
						'dndHoverStart' : function(event) {
							$('.upload-area').addClass('drag-over');
							event.stopPropagation();
							event.preventDefault();
							return false;
						},
						'dndHoverEnd' : function(event) {
							$('.upload-area').removeClass('drag-over');
							event.stopPropagation();
							event.preventDefault();
							return false;
						}
					});
				} else {
					// Fallback to a library solution.
				}
			},
			/**
			 **
			 **/
			entitiesTabHandler : function(e) {
				e.preventDefault();
				var strActive = "active";
				var strAll = "allEntities";
				var strRel = "releasedEntities";
				var strDra = "draftEntities";
				$("#entityTab li").removeClass(strActive);
				$(this).parent().addClass(strActive);

			},

			/**
			 * main menu click event handler.
			 **/
			pitemHandler : (function() {
				var lastItem = null;
				return function() {
					try {
						lastItem.css("display", "none");
					} catch (e) {

					}
					var that = $(this);
					lastItem = that.next();
					lastItem.css({
						display : "block"
					});
					return false;
				};
			})(),
			init : function() {
				$(".pitem").click(this.pitemHandler);
				$("#entityTab a").click(this.entitiesTabHandler);
				//file upload handler registeration
				/**
				$("#upload-area").fileupload({
					dataType : 'json',
					url : 'upload'
				}); **/
				this.fileUploadHandler();
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
