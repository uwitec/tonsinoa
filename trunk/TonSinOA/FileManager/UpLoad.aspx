<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoad.aspx.cs" Inherits="TonSinOA.FileManager.UpLoad" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>上传文件</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <link href="../js/uploadify/uploadify.css" rel="stylesheet" type="text/css" /> 
    <script src="http://code.jquery.com/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js" type="text/javascript"></script>
    <script src="../js/Attach.js" type="text/javascript"></script>
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
                  //debug: true,   //开启调试
                  queueSizeLimit: 5,
                  uploadLimit: 5, //限制总上传文件数
                  fileSizeLimit: '3MB', //文件大小
                  overrideEvents: ['onDialogClose'], //不执行默认的onSelect事件
                  fileTypeExts: '*.jpg;*.bmp;*.gif;*.pdf;*.doc;*.txt;*.png;*.tif;*.ppt;*.xls;*.tiff;*.rtf',
                  successTimeout: 99999,
                  queueID: 'fileQueue',
                  buttonText: 'Browse',
                  'buttonImg': '/images/btn_submit1.gif',
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
        <div  id="fileQueue" class="uploadify-queue"></div>
		<input id="file_upload" name="file_upload" type="file" />
    </div>
   
</div></td>
 </tr>
 <tr>
 <td align="left"><asp:Button ID="Button2" runat="server" Text="上 传" OnClientClick="javascript:$('#file_upload').uploadify('upload','*');return false" CssClass="btnsubmit1" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input id="Button1" type="button" class="btnsubmit1" value="取 消" /></td>

 </tr>
 </table>
</div>

    </form>
</body>
</html>
