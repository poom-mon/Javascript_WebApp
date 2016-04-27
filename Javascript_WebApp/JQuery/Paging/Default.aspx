<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="JQuery_Paging_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

             <table class="table table-hover">
            <thead>
              <tr>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>Email</th>
              </tr>
            </thead>
            <tbody id="tbRows">
            <%for (int i = 0; i < 50; i++)
              { %>
              <tr>
                <td>John</td>
                <td>Doe</td>
                <td>john@example.com</td>
              </tr>
              <tr>
                <td>Mary</td>
                <td>Moe</td>
                <td>mary@example.com</td>
              </tr>
              <tr>
                <td>July</td>
                <td>Dooley</td>
                <td>july@example.com</td>
              </tr>
              <%} %>
            </tbody>
          </table>
           
           <div class="col-md-12 text-right" >
                    <ul class="pagination pagination-sm" id="myPager"></ul>
           </div>

    </form>
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>



    <link href="paging_bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="Pageing.js" type="text/javascript"></script>
    <script>

        $("#myPager").html("")
        $('#tbRows').pageMe({ pagerSelector: '#myPager', showPrevNext: true, hidePageNumbers: false, perPage: 10 });
        // $('#dvTableRowsRd').pageMe({ pagerSelector: '#myPager', showPrevNext: true, hidePageNumbers: false, perPage: 20 });
    </script>
</body>
</html>
