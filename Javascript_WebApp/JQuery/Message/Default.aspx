<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="JQuery_Message_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      
        Primary : <br />
        <input id="btnPrimary" type="button" value="button" />
         <br />
        =====================
       <br />


        Info :<br />
        <input id="btnInfo" type="button" value="button" /> 
       <br />
       =====================
        <br />


        Success : <br />
        <input id="btnSuccess" type="button" value="button" />
        <br />
        =====================
        <br />

        Warning  : <br />
        <input id="btnWarning" type="button" value="button" />  
        <br />
          =====================
        <br />


               Danger  : <br />
        <input id="btnDanger" type="button" value="button" />  
            <br />
          =====================
      <br />




    </div>
    </form>

    <script src="../jquery.1.11.0.min.js" type="text/javascript"></script>
    <script src="../../Javascript/Utility/LoadFile.js" type="text/javascript"></script> 
    <script src="callAlert.js" type="text/javascript"></script> 
    <link href="../../css/button.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
         var cssAlert = "<%= this.ResolveClientUrl("sweet-alert.css") %>";
          var jsAlert = "<%= this.ResolveClientUrl("sweet-alert.js") %>";   
          var Msg = new Message(cssAlert, jsAlert); 

          // Msg.Info("title", " data ", false, "getInfo",false); 

          $(window).load(function() { 
            //  Msg.Primary("title","display ja",true,"primary ok",false);
           });

          
          $("#btnPrimary").on("click",function(){
              Msg.Primary("title","display ja",true,"primary ok",false);
          });

          $("#btnInfo").on("click",function(){
              Msg.Info("title","display ja",true,"primary ok",false);
          });
                
           $("#btnSuccess").on("click",function(){
              Msg.Success("title","display ja",true,"primary ok",false);
          });  

           $("#btnWarning").on("click",function(){
              Msg.Warning("title","display ja",true,"primary ok",false);
          });   

          $("#btnDanger").on("click",function(){
              Msg.Danger("title","display ja",true,"primary ok",false);
          });   






    </script>

</body>
</html>
