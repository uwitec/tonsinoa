<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoad.aspx.cs" Inherits="TonSinOA.FileManager.UpLoad" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上传文件</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js" type="text/javascript"></script>
    <script src="http://localhost:6240/js/Attach.js" type="text/javascript"></script>
      <script type="text/javascript">
          var upload_limit = 1, limit_type = "php,php3,php4,php5,";
          $(function () {
              $("#tabs").tabs();
          });
    </script>
</head>
<body>
    <form id="form1" runat="server">
  
   
<div class="dv">
 <table border="0" cellpadding="3" cellspacing="1" class="tableground" width="100%">
 <tr>
 <td align="left"><div id="tabs" >
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
        <p>M</p>
    </div>
   
</div></td>
 </tr>
 <tr>
 <td align="left"><asp:Button ID="Button2" runat="server" Text="上 传" CssClass="btnsubmit1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input id="Button1" type="button" class="btnsubmit1" value="取 消" /></td>

 </tr>
 </table>
</div>

    </form>
</body>
</html>
