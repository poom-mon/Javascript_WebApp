<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="WebForm_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <%--<script src="../Javascript/staticClass.js" type="text/javascript"></script>
    <script>
        // call class A : 
        console.log(callClass.cClassA());
        // call class B : 
        var _object = { x: "1", y: "2" }
        console.log(callClass.cClassB(_object));
        // call class C : 
        console.log(callClass.cClassC());
    </script>--%>

    <script src="../Javascript/class.js" type="text/javascript"></script>
    <script> 
        var call = new callClass(); 
        console.log(" call B", call.cClassB(1234)) 
        // class D Not Return Type
        call.cClassD()
         
        var call2 = new callClass2();
        console.log(call2.A(), call2.B()); 
    </script>
     
</body>
</html>
