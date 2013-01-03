<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileIndex.aspx.cs" Inherits="TonSinOA.FileManager.FileContent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文档库</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.js" type="text/javascript"></script>
    <script src="../js/jquery.ztree.all.min.js" type="text/javascript"></script>
    <script type="text/javascript">
    <!--
        var setting = {
          async: {
                    enable: true,
				url:"../Ajax/FileTree.ashx",
				autoParam:["id", "pid"],
				otherParam: { "extparam": "abc" }
                }
            
    };
        var nodes = [
	{ id: 1, pId: 0, name: "图书馆", open: true },
    { id: 2, pId: 0, name: "资料库", open: false },
    { id: 3, pId: 0, name: "共享文档", open: false },
    { id: 4, pId: 1, name: "社会科学", open: false, isParent: true },
    { id: 5, pId: 1, name: "口语教程", open: false, isParent: true },
    { id: 6, pId: 2, name: "学习心得", open: false, isParent: true },
    { id: 7, pId: 2, name: "课程资料", open: false, isParent: true },
    { id: 8, pId: 3, name: "人文", open: false, isParent: true },

];
        $(document).ready(function () { 
        
        $.fn.zTree.init($("#treeFile"),setting);
        });
    //-->
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="dv">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" style="height:100%">
    <tr><td colspan="2" align="left">文件夹导航</td></tr>
    <tr>
    <td valign="top" style=" width:150px">
    <div id="treeFile" class="ztree">
    
    </div>
    </td>
    
    <td>
    <iframe frameborder='0' id="rightFrame" name="rightFrame" src="FileList.aspx"  marginheight="0" marginwidth="0" width="100%" height="500px"></iframe>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
