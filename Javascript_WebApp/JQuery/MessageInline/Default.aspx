<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="JQuery_MessageInline_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

<div class="form-contianer">
		<div class="container _width">
			<h1 class="heading">กรุณากรอกข้อมูลของท่าน</h1>
			<div class="form-group">
				<div class="dp-table">
					<div class="dp-table-cell top">
						<label class="_label">คำนำหน้า</label>
						<select id="ddlTitleName" class="form-control">
							<option value="นาย">นาย</option>
							<option value="นาง">นาง</option>
							<option value="นางสาว">นางสาว</option>
						</select>
						<div class="_alert-meg">รหัสพนักงาน</div>
					</div>
					<div class="dp-table-cell top">
						<label class="_label">ชื่อ-นามสกุล</label>
						<input id="tbName" class="form-control input-icon name" type="text" placeholder="ชื่อ นามสกุล">
						<div class="_alert-meg">ชื่อ-นามสกุล</div>
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="_label">โทรศัพท์</label>
				<input id="tbTel" class="form-control input-icon tel" type="tel" onkeypress=" return num_key(event);" maxlength="10" placeholder="โทรศัพท์">
 
				<div class="_alert-meg"> เบอร์โทรศัพท์ </div>
			</div>

			<div class="form-group" style="position: relative;">
				<label class="_label">อีเมล</label>
				<input id="tbEmail" class="form-control input-icon mail" maxlength="40" type="email" onkeypress="return email_key(event);" placeholder="อีเมล" autocomplete="off"><ul class="mailtip" style="display: none; float: none; position: absolute; margin: 0px; padding: 0px; z-index: 1000; top: 60px; left: 0px; width: 762px;"></ul>
                
				<div class="_alert-meg"> อีเมล </div>
			</div>


			<div class="form-group button-container">
				<a class="button-ui button-green" id="btnChooseInsur">เลือกแบบประกันของคุณ<span class="ripple" style="width: 328px; height: 328px; top: -147.766px; left: -19px;"></span></a>
			</div>

            <div class="form-group">
				<div class="dp-table agree-wrap">
					<div class="dp-table-cell top">
						<input id="agree" type="checkbox" checked="">
					</div>
					<div class="dp-table-cell">
						<label for="agree" id="agree_label">ข้าพเจ้ายินยอมให้บริษัทใช้หมายเลขโทรศัพท์ ที่อยู่ และ อีเมล ที่ให้ไว้ ในการแจ้งผลของการสมัคร ข่าวสารอื่นๆ หรือการเสนอขายผลิตภัณฑ์ของบริษัทและคู่ค้า</label>
					</div>
				</div>
			</div>

		</div>
	</div>


    
    </div>
    </form>


    <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="cssInline.css" rel="stylesheet" type="text/css" />
    <script src="../jquery.1.11.0.min.js" type="text/javascript"></script> 
    <script src="../cHelper.js" type="text/javascript"></script>
    <script src="../validHelper.js" type="text/javascript"></script>

    <script>


        $('#btnChooseInsur').on('click', function () {
            console.log("click");
            if (valid()) {
                alert(" submit success !");
            }
        });


        function valid() {
            var v = true; 
            v = v && validElement($('#ddlTitleName'));
            v = v && validElement($('#tbName'));
            v = v && validElement($("#tbName"), "split_name");
            v = v && validElement($('#tbTel'));
            v = v && validElement($('#tbEmail'));

            if (v == false) {
                scroll2Err();
            } 

            return v;
        }


        /*

               var v = true;
    v = v && validElement($("#ddl_TitleName"))
    v = v && validElement($("#tbName"))
    v = v && validElement($("#tbName"), "split_name");
    v = v && validElement($("#tbIdCard"), "idcard");
    v = v && validElement($("#tbMobile"), "mobile");

    v = v && validElement($("#ddl_Career")) 
    if ($("#ddl_Career").val() == "1000") {
        v = v && validElement($("#tbJobs"))
    }
     
    v = v && validElement($("#ddl_TitleBenefic"))
    v = v && validElement($("#tbnameBenefic"))
    v = v && validElement($("#tbnameBenefic"), "split_name");
    v = v && validElement($("#ddl_BeneficRelate"));

   

    if (v == false) {
        scroll2Err();
    } 
    return v;

        */
    </script>
</body>
</html>
