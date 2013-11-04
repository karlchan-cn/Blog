<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>${requestScope.entity.title}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- 导入通用的css ico --><%@ include file="header.jsp"%>
<style type="text/css">
</style>
</head>
<body>
	<%@ include file="navhead.jsp"%>
	<div class="container pagecontainer">
		<div class="row">
			<h3 id="title-preview" class="entity-view-title">${requestScope.entity.title}</h3>
			<div class="entity-view-createtime">
				<span>${requestScope.entity.createdate}</span>
			</div>
		</div>
		<div class="row entity-view-content" id="content-preview">
			<p class="note span6">${requestScope.entity.content}</p>
		</div>
		<div class="row note_upper_footer">
			<span class="pl gtleft">&nbsp;1人浏览</span> <span class="gtleft">&gt;
				<a href="#" class="a_edit_tag">添加标签</a>&nbsp; &nbsp;
			</span> <span class="gtleft">&gt; <a
				href="http://www.douban.com/note/287817279/edit">修改</a>&nbsp; &nbsp;
			</span> <span class="gtleft"> &gt; <a rel="confirm_direct"
				title="删除这篇日记吗?" class="j a_post_link"
				href="http://www.douban.com/note/287817279/remove">删除</a>
			</span>
		</div>
	</div>
</body>

<!-- 导入通用js  -->
<%@ include file="footer.jsp"%>
<script type="text/javascript">
	
</script>
</html>
