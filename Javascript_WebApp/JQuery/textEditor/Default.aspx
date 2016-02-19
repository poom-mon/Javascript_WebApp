<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="JQuery_textEditor_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> 


        <div class="alert alert-success">
        เพิ่มข้อมูล <br /> 
        <textarea id="taContent" cols="80" rows="2"></textarea> 
        <br />
            <input id="btnAddcontent" type="button" value="AddContentToTextEditor" /> 
            <input id="btnGedata" type="button" value="getContent" />  

        </div> 

        <textarea cols="100" id="editor1" name="editor1" rows="10">
        &lt;p&gt;This is some &lt;strong&gt;sample text&lt;/strong&gt;. You are using &lt;a href="http://ckeditor.com/"&gt;CKEditor&lt;/a&gt;.&lt;/p&gt;
        </textarea>
   
        <p id="eMessage">  </p>
 


    </form> 
    <!--
        /****************************
        // add referenct 
        // ../JQuery/textEditor/ckfinder/bin/Debug/CKFinder.dll 
        // แก้ไข path upload รูป
        /****************************
    -->
    <script src="../jquery.1.11.0.min.js" type="text/javascript"></script>
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="ckfinder/ckfinder.js" type="text/javascript"></script> 

    <script>
        var ckEditor = CKEDITOR.replace('editor1');
        CKFinder.setupCKEditor(ckEditor, '../JQuery/textEditor/ckfinder/');

        CKEDITOR.on('instanceReady', function (ev) {
            document.getElementById('eMessage').innerHTML = 'Instance <code>' + ev.editor.name + '<\/code> loaded.';
        });
        function GetContents() {
            var editor = CKEDITOR.instances.editor1;
            var link = editor.getData();
            // alert(link);
            AjaxUpdate(link.replace(/"/g, '\\"'));
        }

        function Focus() {
            CKEDITOR.instances.editor1.focus();
        }

        function onFocus() {
            document.getElementById('eMessage').innerHTML = '<b>' + this.name + ' is focused </b>';
        }

        function onBlur() {
            document.getElementById('eMessage').innerHTML = this.name + ' lost focus';
        }
        $("#btnAddcontent").on("click", function () {
            var content = $("#taContent").val();
            var editor = CKEDITOR.instances.editor1;
            //alert(content);
            editor.setData(content);
        });

        $("#btnGedata").on("click", function () {
            var editor = CKEDITOR.instances.editor1;
            var data = editor.getData();

            alert(data);
        });
    </script>
</body>
</html>
