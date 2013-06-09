<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>新加日记 &middot; 这儿</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- 导入通用的css ico --><%@ include file="header.jsp"%>
<style type="text/css">
body {
	padding-top: 20px;
}

.btn:focus {
	outline: none;
}

h2 {
	font-size: 14px;
	line-height: 10px;
}

h1 {
	font-family: "Arial,Helvetica,sans-serif";
	font-size: 25px;
	line-height: normal;
	font-weight: 700;
	color: #494949;
}

.infotips {
	color: #666666;
}

.navhead {
	border-bottom: 1px dashed #DDDDDD
}

.navhead .nav {
	margin-bottom: 5px;
}

#container {
	font-family: "Arial,Helvetica,sans-serif";
}

.container input[type="text"] {
	height: 16px;
}

#name-help {
	font-size: 12px;
	margin-top: 5px;
}

#form-welcome {
	margin: 15px 0 15px 30px;
}

.entity-form select,textarea,input[type="text"],input[type="password"],input[type="datetime"],input[type="datetime-local"],input[type="date"],input[type="month"],input[type="time"],input[type="week"],input[type="number"],input[type="email"],input[type="url"],input[type="search"],input[type="tel"],input[type="color"],.uneditable-input
	{
	border-radius: 0px
}

.entity-form textarea {
	width: 530px;
	resize: vertical;
	height: 400px;
}

.entity-form .btn-group {
	float: right;
}

.float-label {
	width: 545px;
	margin-bottom: 10px;
}

.float-label p {
	display: inline;
}

.btm-btn {
	margin-top: 30px
}

#cancel-btn {
	float: right;
}

.radio,.inline {
	margin-right: 11px;
}

.dialogbd {
	font-size: 12px;
}

.modal {
	border-radius: 0;
}

.modal-header {
	line-height: 10px;
	height: 20px;
}

.modal-header button {
	line-height: 10px;
	font-size: 18px;
	font-family: "Comic Sans MS";
}

input[type="file"] {
	height: 25px;
	filter: alpha(opacity =         0);
	opacity: 0;
}
</style>
<style type="text/css">
.modal {
	width: 648px;
}

#uploadfiletable {
	display: none;
}

.fileinput-button input {
	cursor: pointer;
	direction: ltr;
	font-size: 23px;
	margin: 0;
	opacity: 0;
	position: absolute;
	right: 0;
	top: 0;
}

.fileinput-button {
	position: relative;
}

.fileupload-buttonbar {
	margin-bottom: 10px;
}

.table th,tr {
	font-size: 12px;
	font-weight: 400;
	font-style: normal;
	color: gray;
}

.table .uploadlistname {
	text-indent: 10px;
	width: 70%;
}

.table .uploadlistsize {
	text-indent: 5px;
	width: 15%;
}

.table .uploadlistdel {
	width: 15%;
}

.table a {
	padding: 0 0 0 5px;
}

.table td {
	padding: 0;
}

.table .fileloading {
	background: url("/Blog/assets/images/loading.gif") no-repeat left;
	color: #999999;
	font-size: 12px;
	padding: 0 0 0 18px;
}

.table .totalfooter {
	color: #777777;
}

.table .totalfooter .total-num {
	text-indent: 15px;
}

.table .totalfooter .total-size {
	text-indent: 5px;
}

.table .image-error {
	color: red;
	margin-left: 10px;
}

#uploaderror {
	display: none;
}

/** 选项 blogoptiondiv **/
.blogoptiondiv {
	margin-top: 10px;
	font-size: 12px;
}

.blogoptiondiv p {
	display: inline;
}

.blogoptiondiv label,input,input[type="radio"],input[type="checkbox"],button,select,textarea
	{
	font-size: 12px;
	margin-right: 4px;
}

.blogoptiondiv input[type="checkbox"] {
	margin-top: 0;
}
</style>
</head>
<body>
	<div class="container navhead">
		<ul class="nav nav-pills">
			<li class="active"><a href="/Blog/">日记</a></li>
			<li><a href="#">活动</a></li>
			<li><a href="#">联系我们</a></li>
		</ul>
	</div>
	<div class="container" id="container">
		<div class='row'>
			<h1 class="span12 offset1" id="form-welcome">新加日记</h1>
		</div>
		<div class='span6'>
			<form class="entity-form" action="addentity" method="POST">
				<fieldset>
					<label> 题目： </label> <input type="text" name="title" id="title"
						class="input-xxlarge" placeholder="" /><span id="title-info"
						class="help-block" tabindex="1"></span> <span id="title-info"
						class="help-block" tabindex="1"></span> <label class="float-label">
						<p>正文：</p> <span class="btn-group"><a class="btn btn-small"
							href="#myModal" role="button" data-toggle="modal"
							aria-hidden="false">图片</a><a class="btn btn-small" href="#">连接</a></span>
					</label>
					<textarea name="content" id="content" tabindex="2">
                        </textarea>
					<span id="content-info" class="help-block"></span>
					<div class="blogoptiondiv">
						<p>设置可见：</p>
						<label class="radio inline"> <input type="radio" value="P"
							name="readprivate" id="entity_privateP" tabindex="3" /><span>所有人看见</span>
						</label> <label class="radio inline"> <input type="radio"
							value="S" name="readprivate" id="entity_privateS" tabindex="4" /><span>仅朋友可见</span>
						</label> <label class="radio inline"> <input type="radio"
							value="X" name="readprivate" id="entity_privateX" tabindex="5" /><span>仅自己可见</span>
						</label>
					</div>
					<div class="blogoptiondiv">
						<p>设置权限：</p>
						<input type="checkbox" id="cannot_reply" value="true"><span>不允许回应</span>
					</div>
					<label class="float-label">
						<button type="" class="btn btn-small btm-btn">预览</button>
						<button type="submit" class="btn btn-small btn-success btm-btn">
							发表</button>
						<button id='cancel-btn' type="" class="btn btn-small btm-btn">
							取消</button>
					</label>
				</fieldset>
			</form>
		</div>
	</div>
	<!-- Modal -->
	<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
		data-backdrop="static" aria-labelledby="myModalLabel"
		aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close dismissupload"
				data-dismiss="modal" aria-hidden="true">×</button>
			<h2 id="myModalLabel">添加文件</h2>
		</div>
		<div class="modal-body">
			<div class="fileupload-buttonbar">
				<span class="btn btn-success btn-small fileinput-button"><i
					class="icon-plus icon-white"></i><span>选择图片</span><input
					id='fileupload' type="file" name="file" data-url="savefile"
					multiple="true"></span>
			</div>
			<div class="dialogbd">
				<p class="infotips">图片不超过5M，一次最多20张</p>
				<div class="filelists">
					<table id='uploadfiletable' class="table table-hover">
						<thead>
							<tr>
								<th class="uploadlistname">图片</th>
								<th class="uploadlisttime">大小</th>
								<th class="uploadlistdel">删除?</th>
							</tr>
						</thead>
						<tr class="totalfooter" id="totalfooter">
							<td class="total-num" id="total-num">共<span
								class="total-num-image" id="total-num-image">0</span>张<span
								id="uploaderror">已经到达上传数量上限。</span>
							</td>
							<td class="total-size" colspan="2">总计:<span
								class='total-size-image' id='total-size-image'>0</span> <span
								class='total-size-type' id='total-size-type'>KB</span>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<button class="btn btn-small dismissupload" data-dismiss="modal"
				aria-hidden="true">关闭</button>
			<button class="btn btn-small btn-success" id="saveupload">
				保存</button>
		</div>
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
<script type="text/javascript">
	$(function() {
		window.pageController = {
			blogentity : {
				id : 0,
				title : '',
				content : '',
				readprivate : 'P',
				commentable : true,
				images : [],
				isTemp : true
			},
			blogimage : {
				id : 0,
				tempid : 0,
				size : 0,
				position : '',
				name : '',
				showName : ''
			},
			uploadtable : $('#uploadfiletable'),
			init : function() {
				//上传表格删除按钮控制
				var delBtns = $('#uploadfiletable a');
				delBtns.live('mouseover', function() {
					$(this).find('i').addClass('icon-white');
				});
				delBtns.live('mouseout', function() {
					$(this).find('i').removeClass('icon-white');
				});
				delBtns.bind('click', function() {
					console.log(this + 'clicked');
				});
				$('.delitem').live('click', function() {
					var delRow = $(this).parent().parent();
					var rowid = delRow.attr('id');
					if ((rowid + '').indexOf('temp') === -1) {
						$.get("/Blog/entity/inituploadinfo", {
							action : 'init'
						});
						//暂存文章,或者加载上次临时保存的文章
						$.post("/Blog/imagemanage/delimage", {
							entity : ''
						}, function(data) {
							//临时保存对象
							alert('success');
						}, "json");
					}
					delRow.remove();
				});
				//暂存文章,或者加载上次临时保存的文章
				$.post("/Blog/entity/saveentity", {
					entity : $.toJSON(this.blogentity)
				}, function(data) {
					//临时保存对象
					pageController.blogentity = data;
				}, "json");
				//注册上传窗体hide事件
				var uploadModel = $('#myModal');
				uploadModel.on('hidden', function() {
					//表格数据删除
					$('tr').remove('.uploaditem');
					$('#total-num-image').text(0);
					$('#total-size-image').text('0');
					$('#total-size-type').text('KB');
					$('#uploadfiletable').hide();
				});
				uploadModel.on('show', function() {
					//初始化缓存
					$.get("/Blog/entity/inituploadinfo", {
						action : 'init'
					});
				});
				//确定/取消上传文件
				$('.dismissupload').click(function() {
					//alert('dismissupload');
				});
				$('#saveupload').click(function() {
					//alert('saveupload');
				});

			},
			inituploadinfo : function() {
				var uploadtable = this.uploadtable;
				var uploaditems = uploadtable.find('uploaditem');
				//if has upload item ,update items info;
				if (uploaditem.lenght > 0) {

				} else {
					uploadtable.remove($('.totalfooter'));
				}
			},
			countSize : function(size) {
				var tempSize = size / 1024;
				var sizeType = 'KB'
				if (tempSize > 1024) {
					tempSize = tempSize / 1024;
					sizeType = 'Mb';
				}
				return {
					'size' : tempSize,
					'sizeType' : sizeType
				};
			},
			getSize : function(size, sizeType) {
				var retVal = 0;
				if (sizeType == 'KB') {
					retVal = size * 1024;
				} else if (sizeType == 'Mb') {
					retVal = size * 1024 * 1024;
				}
				return retVal;
			}
		};
		pageController.init();
		$('#fileupload')
				.fileupload(
						{
							forceIframeTransport : true,
							acceptFileTypes : /(\.|\/)(gif|jpe?g|png)$/i,
							maxFileSize : 5000000, // 5MB
							url : 'savefile',
							dataType : 'json',
							add : function(e, data) {
								var uploadfiletable = $('#uploadfiletable');
								var fileuploader = $('#fileupload');
								var file = data.files[0];
								var itemCount = uploadfiletable
										.find('.uploaditem').length;
								var fileFilter = /(\.|\/)(gif|jpe?g|png)$/i;
								var filterResult = fileFilter.exec(file.name);
								if (itemCount === 0) {
									uploadfiletable.show(600);
								}
								if (itemCount >= 20) {
									var uploaderror = $("#uploaderror");
									uploaderror.text("已经达到上传上限。").css({
										"display" : 'blok'
									});
									return;
								}
								var tempid = itemCount + 1;
								var fileitme = $('<tr class="uploaditem" id="tempid_' +
                    tempid +
                    '"><td class="uploadlistname">'
										+ file.name
										+ '</td><td class="uploadlistsize fileloading">上传中...</td><td class="uploadlistdel"><a title="删除图片" class="btn btn-link delitem"><i class="icon-trash"></i></a></td></tr>');
								fileitme.insertBefore($('#totalfooter'));
								fileuploader
										.fileupload(
												'option',
												{
													'formData' : [
															{
																'name' : 'tempid',
																'value' : tempid
															},
															{
																'name' : 'entity',
																'value' : $
																		.toJSON(pageController.blogentity)
															} ]
												});
								if (filterResult == null) {
									var imageerror = $('<span class="image-error">请选择图片文件(JPG/JPEG, PNG,或GIF) </span>');
									fileitme.addClass('error');
									fileitme.find('.uploadlistsize').text('')
											.removeClass('fileloading');
									fileitme.find('.uploadlistname').append(
											imageerror);
									return;
								}
								data.submit();
							},
							done : function(e, data) {
								$.each(data.result,
										function(index, file) {
											var currentFile = file[0];
											var tr = $('#tempid_'
													+ currentFile.tempid);
											tr.find('.uploadlistsize')
													.removeClass('fileloading')
													.text(
															file.size / 1024
																	+ 'kb');
											tr.addClass('warning');
											tr = null;
										});
							}
						});

	});
</script>
</html>