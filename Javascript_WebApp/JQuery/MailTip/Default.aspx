﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="JQuery_MailTip_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="mailtip.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <input id="tbEmail" type="text" />
    </div>
    </form>
    <script src="../jquery.1.11.0.min.js" type="text/javascript"></script>
    <script src="jquery.mailtip.min.js" type="text/javascript"></script>
    <script> 
    $(window).load(function () {
            console.log("test mailtip");
            $("#tbEmail").mailtip(); 
    });  
</script>
</body>
</html>
