<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8" %>
 <!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>新加日记 &middot; 这儿</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- 导入通用的css ico --><%@ include file="header.jsp" %>
        <style type="text/css">
            body {
                padding-top: 20px;
                /**background-color: #f5f5f5; **/
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
            
            .entity-form select, textarea, input[type =
            "text"], input[type = "password"], input[type = "datetime"], input[type = "datetime-local"], input[type = "date"], input[type = "month"], input[type = "time"], input[type = "week"], input[type = "number"], input[type = "email"], input[type = "url"], input[type = "search"], input[type = "tel"], input[type = "color"], .uneditable-input {
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
            
            .radio, .inline {
                margin-right: 11px;
            }
        </style>
    </head>
    <body>
        <div class="container navhead">
            <ul class="nav nav-pills">
                <li class="active">
                    <a href="/Blog/">日记</a>
                </li>
                <li>
                    <a href="#">活动</a>
                </li>
                <li>
                    <a href="#">联系我们</a>
                </li>
            </ul>
        </div>
        <div class="container" id="container">
            <div class='row'>
                <h1 class="span12 offset1" id="form-welcome">新加日记</h1>
            </div>
            <div class='span6'>
                <form class="entity-form" action="addentity" method="POST">
                    <fieldset>
                        <label>
                            题目：
                        </label>
                        <input type="text" name="title" id="title" class="input-xxlarge" placeholder=""/><span id="title-info" class="help-block" tabindex="1"></span>
                        <input type="file" name="file" id="fileupload" class="input-xxlarge" data-url="savefile" multiple/><span id="title-info" class="help-block" tabindex="1"></span>
                        <label class="float-label">
                            <p>
                                正文：
                            </p>
                            <span class="btn-group"><a class="btn btn-small" href="#">图片</a><a class="btn btn-small" href="#">连接</a></span>
                        </label>
                        <textarea name="content" id="content" tabindex="2">
                        </textarea>
                        <span id="content-info" class="help-block"></span>
                        <label>
                            <p style="display:inline;">
                                设置可见：
                            </p>
                            <label class="radio inline">
                                <input type="radio" value="P" name="private" id="entity_privateP" tabindex="3" /><span>所有人看见</span>
                            </label>
                            <label class="radio inline">
                                <input type="radio" value="S" name="private" id="entity_privateS" tabindex="4"/><span>仅朋友可见</span>
                            </label>
                            <label class="radio inline">
                                <input type="radio" value="X" name="private" id="entity_privateX" tabindex="5"/><span>仅自己可见</span>
                            </label>
                        </label>
                        <label>
                            <p style="display:inline;">
                                设置权限：
                            </p>
                            <label class="">
                                <input type="checkbox" id="cannot_reply" value="true">不允许回应
                            </label>
                        </label>
                        <label class="float-label">
                            <button type="" class="btn btn-small btm-btn">
                                预览
                            </button>
                            <button type="submit" class="btn btn-small btn-success btm-btn">
                                发表
                            </button>
                            <button id='cancel-btn' type="" class="btn btn-small btm-btn">
                                取消
                            </button>
                        </label>
                    </fieldset>
                </form>
            </div>
        </div>
        <!-- /container -->
    </body>
    <!-- 导入通用js  -->
    <%@ include file="footer.jsp" %>
    <script src="/Blog/assets/js/jquery.ui.widget.js">
    </script>
    <script src="/Blog/assets/js/jquery.iframe-transport.js">
    </script>
    <script src="/Blog/assets/js/jquery.fileupload.js">
    </script>
    <script type="text/javascript">
        $(function(){
            $('#fileupload').fileupload({
                dataType: 'json',
                done: function(e, data){
                    $.each(data.result.files, function(index, file){
                        $('<p/>').text(file.name).appendTo(document.body);
                    });
                }
            });
        });
    </script>
</html>
