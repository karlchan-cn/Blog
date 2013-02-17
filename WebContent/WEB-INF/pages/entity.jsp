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
	/**background-color: #f5f5f5; **/
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

.navhead {
	border-bottom: 1px dashed #DDDDDD
}

.navhead .nav {
	margin-bottom: 5px;
}

#container {
	font-family: "Arial,Helvetica,sans-serif";
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
	font-family: "Comic Sans MS", ​sans-serif;
}
</style>
<style type="text/css">
.modal {
	width: 648px;
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

.table thead {
	font-size: 12px;
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
							data-backdrop="false">图片</a><a class="btn btn-small" href="#">连接</a></span>
					</label>
					<textarea name="content" id="content" tabindex="2">
                        </textarea>
					<span id="content-info" class="help-block"></span> <label>
						<p style="display: inline;">设置可见：</p> <label class="radio inline">
							<input type="radio" value="P" name="private" id="entity_privateP"
							tabindex="3" /><span>所有人看见</span>
					</label> <label class="radio inline"> <input type="radio" value="S"
							name="private" id="entity_privateS" tabindex="4" /><span>仅朋友可见</span>
					</label> <label class="radio inline"> <input type="radio" value="X"
							name="private" id="entity_privateX" tabindex="5" /><span>仅自己可见</span>
					</label>
					</label> <label>
						<p style="display: inline;">设置权限：</p> <label class=""> <input
							type="checkbox" id="cannot_reply" value="true">不允许回应
					</label>
					</label> <label class="float-label">
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
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">×</button>
			<h2 id="myModalLabel">添加文件</h2>
		</div>
		<div class="modal-body">
			<div class="fileupload-buttonbar">
				<span class="btn btn-success btn-small fileinput-button"><i
					class="icon-plus icon-white"></i><span>选择</span><input
					id='fileupload' type="file" name="file" data-url="savefile"
					multiple="true"></span>
			</div>
			<div class="dialogbd">
				<p>图片不超过5M，一次最多20张</p>

				<div class="filelists">
					<table id='uploadfiletable' class="table table-hover">
						<thead>
							<tr>
								<th class="uploadlistname">图片</th>
								<th class="uploadlisttime">大小</th>
								<th class="uploadlistdel">删除?</th>
							</tr>
						</thead>
						<tr class="uploaditem">
							<td class="uploadlistname">TB - Monthly</td>
							<td class="uploadlistsize">270.9KB</td>
							<td class="uploadlistdel"><a title="删除图片"
								class='btn btn-link'><i class="icon-trash"></i></a></td>
						</tr>
						<tr class="totalfooter">
							<td class="total-num" id="total-num">共1张</td>
							<td class="total-size" colspan="2">共2Mb</td>

						</tr>
					</table>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<button class="btn btn-small" data-dismiss="modal" aria-hidden="true">
				关闭</button>
			<button class="btn btn-small btn-success">保存</button>
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
		var pageController = {
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
					alert('clicked');
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
			}
		};
		pageController.init();
		$('#fileupload')
				.fileupload(
						{
							url : 'savefile',
							dataType : 'json',
							add : function(e, data) {
								var uploadfiletable = $('#uploadfiletable');
								var fileuploader = $('#fileupload');
								var file = data.files[0];
								var tempid = uploadfiletable.find('tr').length + 1;
								var fileitme = $('<tr class="uploaditem" id="tempid_'
										+ tempid
										+ '"><td class="uploadlistname">'
										+ file.name
										+ '</td><td class="uploadlistsize fileloading">上传中...</td><td class="uploadlistdel"><a title="删除图片" class="btn btn-link delitem"><i class="icon-trash"></i></a></td></tr>');
								fileitme.appendTo($('#uploadfiletable'));
								fileuploader.fileupload('option', {
									'formData' : [ {
										'name' : 'tempid',
										'value' : tempid
									} ]
								});
								data.submit();
							},
							done : function(e, data) {
								$.each(data.result, function(index, file) {
									var tr = $('#tempid_' + file.tempid);
									tr.find('.uploadlistsize').removeClass(
											'fileloading').text(
											file.size / 1024 + 'kb');
									tr.addClass('warning');
									tr = null;
								});
							}
						});

	});
</script>
</html>
