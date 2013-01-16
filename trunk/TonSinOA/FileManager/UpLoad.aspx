<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoad.aspx.cs" Inherits="TonSinOA.FileManager.UpLoad" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上传文件</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <link href="../js/uploadify/uploadify.css" rel="stylesheet" type="text/css" /> 
     <link href="../css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js" type="text/javascript"></script>
    <script src="../js/Attach.js" type="text/javascript"></script>
    <script src="../js/jquery.ztree.all.min.js" type="text/javascript"></script>
    <script src="../js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
      <script type="text/javascript">
          var upload_limit = 1, limit_type = "php,php3,php4,php5,";
          $(function () {
              $("#tabs").tabs();

              $('#file_upload').uploadify({
                  //				'formData'     : {
                  //					'timestamp' : '<?php echo $timestamp;?>',
                  //					'token'     : '<?php echo md5('unique_salt' . $timestamp);?>'
                  //
                  auto: false,
                 // multi: false,
                  //removeCompleted: false,
                 // debug: true,   //开启调试
                  queueSizeLimit: 5,
                  uploadLimit: 5, //限制总上传文件数
                  fileSizeLimit: '3MB', //文件大小
                  overrideEvents: ['onDialogClose'], //不执行默认的onSelect事件
                  fileTypeExts: '*.jpg;*.bmp;*.gif;*.pdf;*.doc;*.txt;*.png;*.tif;*.ppt;*.xls;*.tiff;*.rtf',
                  successTimeout: 99999,
                  queueID: 'fileQueue',
                  buttonText: 'Browse',
                  swf: "/js/uploadify/uploadify.swf",
                  uploader: "/Ajax/UpLoadFile.ashx",
                  width: 80,
                  height: 20,
                  buttonClass: "btnsubmit2",
                  onCancel: function (event, queueId, fileObj, data) {
//                      console.debug(queueId);
//                      $('#file_upload').uploadify('cancel');
                  }
              });

          });

          		<!--
		var setting = {
			view: {
				dblClickExpand: false
			},
			async: {
                    enable: true,
				url:"../Ajax/FileTree.ashx",
				autoParam:["id", "pid"],
				otherParam: { "extparam": "N" }
                },
			callback: {
				//beforeClick: beforeClick,
				onClick: onClick
			}
		};

		

		function beforeClick(treeId, treeNode) {
			var check = (treeNode && !treeNode.isParent);
			//if (!check) alert("只能选择城市...");
			return check;
		}
		
		function onClick(e, treeId, treeNode) {
//			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
//			nodes = zTree.getSelectedNodes(),
//			v = "";
//			nodes.sort(function compare(a,b){return a.id-b.id;});
//			for (var i=0, l=nodes.length; i<l; i++) {
//				v += nodes[i].name + ",";
//			}
//			if (v.length > 0 ) v = v.substring(0, v.length-1);
			//var cityObj = $("#DirName span");
            $("#DirTypeID").val(treeNode.id);
            $("#DirName span").text( treeNode.name);
            hideMenu();
			//cityObj.attr("value", treeNode.name);
		}

		function showMenu() {
			var cityObj = $("#DirName");
			var cityOffset = $("#DirName").offset();
			$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}

		$(document).ready(function(){
			$.fn.zTree.init($("#tree"), setting);
		});
		//-->
       
      </script>
</head>
<body>
    <form id="form1" runat="server">
  
   
<div class="dv">
 <table border="0" cellpadding="3" cellspacing="1" class="tableground" width="100%">
 <tr>
     
 <td align="left">
 <input id="DirTypeID" type="hidden" />
 <div style="float:left">
 上传目录： <a onclick="showMenu();" class="dropdown" href="javascript:;" id="DirName"><span>
                                选择目录</span></a></div><%--<input id="DirName" type="text" onclick="showMenu(); return false;"/>--%>
                                <div style="float:right"><a href="javascript:history.back()">返回</a></div>
 </td>
 </tr>
 <tr>
 <td align="left">
 <div id="tabs" >
    <ul>
        <li><a href="#tabs-1">单选文件上传</a></li>
        <li><a href="#tabs-2">批量上传</a></li>
        
    </ul>
    <div id="tabs-1" style="text-align:left">
        <script type="text/javascript">
            ShowAddFile();
         </script>
    </div>
    <div id="tabs-2" style="text-align:left">
        <div  id="fileQueue" class="uploadify-queue"></div>
		<input id="file_upload" name="file_upload" type="file" />
    </div>
   
</div></td>
 </tr>
 <tr>
 <td align="left">
 <asp:Button ID="Button2" runat="server" Text="上 传" OnClientClick="javascript:$('#file_upload').uploadify('upload','*');return false" CssClass="btnsubmit1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input id="Button1" type="button" class="btnsubmit1" value="取 消" /></td>

 </tr>
 </table>
</div>
<div id="menuContent" class="menuContent" style="display:none; position: absolute; background-color:#ffffff">
	<ul id="tree" class="ztree" style="margin-top:0; width:120px; height: 200px;"></ul>
</div>
    </form>
</body>
</html>
